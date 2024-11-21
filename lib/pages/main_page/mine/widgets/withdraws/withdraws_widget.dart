import 'package:churn/components/pay_psw_sheet.dart';
import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_net_work/models/withdraws_config_model.dart';
import 'package:dk_utils/components/gradient_button.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

import '../../../../../assets_tool/ui_assets.dart';
import '../../../../../router_config.dart';
import '../../logic/withdraws_controller.dart';

class WithdrawsWidget extends StatefulWidget {
  const WithdrawsWidget({super.key});

  @override
  State<WithdrawsWidget> createState() => _WithdrawsWidgetState();
}

class _WithdrawsWidgetState extends State<WithdrawsWidget> {
  WithdrawsConfigModel? config;
  MethodList? selectedWithdrawsType;
  int cardId = 0;
  double conversionRate = 6.92;
  List<MethodList> withdrawsList = [];
  TextEditingController usdtController = TextEditingController();
  TextEditingController cnyController = TextEditingController();
  WithdrawsController withdrawsController = WithdrawsController();

  @override
  void dispose() {
    // TODO: implement dispose
    usdtController.dispose();
    cnyController.dispose();
    withdrawsController.removeListener(_updateData);
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState

    WidgetsBinding.instance.addPostFrameCallback((_) {
      EasyLoading.show();
      initData();
      withdrawsController.addListener(_updateData);
    });

    super.initState();
  }

  void commit() {
    FocusScope.of(context).requestFocus(FocusNode());
    if (selectedWithdrawsType == null) {
      EasyLoading.showError("请选择提现方式");
      return;
    }
    if (usdtController.text.isEmpty) {
      EasyLoading.showError("请输入提现金额");
      return;
    }
    if (usdtController.text.isNotEmpty) {
      final amount = double.parse(usdtController.text);
      if (amount == 0) {
        EasyLoading.showError("请输入提现金额");
        return;
      }
      if (amount > double.parse(config?.tixinmoney ?? "0")) {
        EasyLoading.showError("余额不足");
        return;
      }
    }

    showCustomBottomPayPassWordSheet(context, "支付密码", (p) {}, onConfirm: (p) {
      EasyLoading.show();
      commitWithdraws(
              paypwd: p,
              amount: usdtController.text,
              cardId: selectedWithdrawsType?.cardId ?? 0)
          .then((value) {
        value.ifSuccess((data) {
          EasyLoading.showSuccess(data.msg ?? "");
          withdrawsController.getWithdrawsConfig();
          showCustomDialog(
            context: context,
            title: '提示',
            content: '提交成功',
            onConfirm: () {
              // 确定按钮的处理逻辑
              Navigator.of(context).pop(); // 关闭弹窗
              pushPage(context, path: PagePath.withdrawsRecordPage);
            },
          );
        });
        value.ifFailure((e) {
          EasyLoading.showError(e.message);
        });
      });
    });
  }

  void _updateData() {
    setState(() {
      config = withdrawsController.withdrawsModel.config;
      withdrawsList =
          withdrawsController.withdrawsModel.config?.methodList ?? [];
      conversionRate = double.parse(config?.cnyusd ?? "6.92");
    });
  }

  void initData() {
    withdrawsController.getWithdrawsConfig();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                pushPage(context, path: PagePath.yuEBaoPage);
              },
              child: RoundContainer(
                imagePath: UIAssets.source!.icCardBg,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppLocalImage(
                      path: UIAssets.source!.icyeb,
                      width: 22.w,
                      height: 22.w,
                    ),
                    SizedBox(
                      width: 16.w,
                    ),
                    Text("余额宝",
                        style: TextStyle(
                            fontSize: 15.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            height: 1.4)),
                    const Spacer(),
                    Text(
                      "闲置资金再添利",
                      style: TextStyle(
                          fontSize: 12.sp,
                          height: 1.2,
                          color: Colors.white,
                          fontWeight: FontWeight.w400),
                    ),
                    Icon(
                      Icons.keyboard_arrow_right_outlined,
                      color: Colors.white,
                      size: 12.w,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 36.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '选择提现方式',
                  style: TextStyle(
                      fontSize: 16.sp,
                      color: AppTheme().wordPrimaryColor,
                      fontWeight: FontWeight.w400,
                      height: 1.2),
                ),
                GestureDetector(
                  onTap: () {
                    pushPage(context, path: PagePath.withdrawsManagerPage);
                  },
                  child: SizedBox(
                    height: 25.h,
                    child: Text(
                      '绑定提现资料',
                      style: TextStyle(
                          fontSize: 13.sp,
                          color: AppTheme().themeBackGroundColor,
                          fontWeight: FontWeight.w400,
                          height: 1.2),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15.h),
            ArrowRightRoundContainer(
              onClick: () {
                if (withdrawsList.isEmpty) {
                  EasyLoading.showError("加载中..");
                  return;
                }
                PickerBottomPicker.pickerNormal(context,
                    title: "选择提现方式",
                    pickers: withdrawsList.map((e) => e.text).toList(),
                    onSelected: (value) {
                  setState(() {
                    selectedWithdrawsType =
                        withdrawsList.where((e) => e.text == value).first;
                  });
                });
              },
              text: selectedWithdrawsType == null
                  ? '选择收款方式'
                  : selectedWithdrawsType?.text ?? "",
              textColor: selectedWithdrawsType == null
                  ? AppTheme().wordSecondColor
                  : AppTheme().wordPrimaryColor,
            ),
            SizedBox(height: 15.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  '提现金额',
                  style: TextStyle(
                      fontSize: 16.sp,
                      color: AppTheme().wordPrimaryColor,
                      fontWeight: FontWeight.w400,
                      height: 1.2),
                ),
                Spacer(),
                Text(
                  '提现余额 ${config?.tixinmoney ?? "0"} USDT',
                  style: TextStyle(
                      fontSize: 13.sp,
                      color: AppTheme().wordSecondColor,
                      fontWeight: FontWeight.w400,
                      height: 1.2),
                ),
              ],
            ),
            SizedBox(height: 20.h),
            RoundContainer(
              vertical: 10.h,
              child: AmountInputWidget(
                controller: usdtController,
                hintText: '请输入提现金额',
                digit: 6,
                prefixString: '\$',
                suffixString: "USDT",
                onChanged: (value) {
                  if (value.isEmpty || double.parse(value) == 0) {
                    cnyController.text = "0";
                  } else {
                    final curValue = double.parse(value);
                    final cny = curValue * conversionRate;
                    cnyController.text = cny.toStringAsFixed(2);
                  }
                },
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            if (selectedWithdrawsType?.cardId == 1 ||
                selectedWithdrawsType?.cardId == 2)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '=',
                    style: TextStyle(
                        fontSize: 20.sp,
                        color: AppTheme().wordPrimaryColor,
                        fontWeight: FontWeight.w700,
                        height: 1.2),
                  ),
                ],
              ),
            SizedBox(
              height: 15.h,
            ),
            if (selectedWithdrawsType?.cardId == 1 ||
                selectedWithdrawsType?.cardId == 2)
              RoundContainer(
                vertical: 10.h,
                child: AmountInputWidget(
                  controller: cnyController,
                  hintText: '实际到账金额',
                  digit: 2,
                  prefixString: '¥',
                  suffixString: "元",
                  onChanged: (value) {
                    if (value.isEmpty || double.parse(value) == 0) {
                      usdtController.text = "0";
                    } else {
                      final curValue = double.parse(value);
                      final usdt = curValue / conversionRate;
                      usdtController.text = usdt.toStringAsFixed(6);
                    }
                  },
                ),
              ),
            SizedBox(
              height: 15.h,
            ),
            if (selectedWithdrawsType?.cardId == 1 ||
                selectedWithdrawsType?.cardId == 2)
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '1USDT=${conversionRate}CNY',
                  style: TextStyle(
                      color: AppTheme().themeBackGroundColor,
                      fontSize: 14.sp,
                      height: 1.2,
                      fontWeight: FontWeight.w400),
                ),
              ),
            SizedBox(
              height: 15.h,
            ),
            GradientButton(
                text: "提交申请",
                onPressed: (index) {
                  commit();
                }),
            SizedBox(
              height: 50.h,
            ),
            Text(
              "温馨提示：\n${config?.wenxintishi ?? ""}",
              style: TextStyle(
                  color: AppTheme().wordPrimaryColor,
                  fontSize: 14.sp,
                  height: 1.2,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
