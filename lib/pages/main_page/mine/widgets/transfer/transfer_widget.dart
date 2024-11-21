import 'package:churn/assets_tool/ui_assets.dart';
import 'package:churn/l10n/l10n.dart';
import 'package:churn/pages/main_page/mine/widgets/transfer/recipients_records_widget.dart';
import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_net_work/models/transfer_config_model.dart';
import 'package:dk_utils/components/gradient_button.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../components/pay_psw_sheet.dart';

class TransferWidget extends StatefulWidget {
  const TransferWidget({super.key});

  @override
  State<TransferWidget> createState() => _TransferWidgetState();
}

class _TransferWidgetState extends State<TransferWidget> {
  TransferConfigModel? txConfig;
  TextEditingController nameController = TextEditingController();
  TextEditingController receivingAccountController = TextEditingController();
  TextEditingController usdtController = TextEditingController();
  double conversionRate = 6.92;
  double cny = 1;
  InMethod? txIn;
  OutMethod? txOut;
  List<InMethod> txInList = [];
  List<OutMethod> txOutList = [];

  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      EasyLoading.show();
      initData();
    });

    super.initState();
  }

  void commit() {
    if (nameController.text.isEmpty) {
      EasyLoading.showError("请输入会员姓名");
      return;
    }
    if (receivingAccountController.text.isEmpty) {
      EasyLoading.showError("请输入会员收款账号");
      return;
    }
    if (txIn == null) {
      EasyLoading.showError("请选择接收方式");
      return;
    }
    if (usdtController.text.isEmpty) {
      EasyLoading.showError("请输入转账金额");
      return;
    }

    if (usdtController.text.isNotEmpty) {
      double tx = double.parse(usdtController.text);

      if (txIn?.id == 1) {
        double investBalance = double.parse(txConfig?.data?.amount ?? "0");
        if (tx > investBalance) {
          EasyLoading.showError("不能大于投资余额");
          return;
        }
      } else if (txIn?.id == 2) {
        double crashBalance = double.parse(txConfig?.data?.txmoney ?? "0");
        if (tx > crashBalance) {
          EasyLoading.showError("不能大于提现余额");
          return;
        }
      }
    }

    if (txOut == null) {
      EasyLoading.showError("请选择转出方式");
      return;
    }
    showCustomBottomPayPassWordSheet(context, "支付密码", (p) {},
        onConfirm: (pwdPay) {
      EasyLoading.show();
      commitTransfer(
              txOut: txOut?.id ?? 0,
              txIn: txIn?.id ?? 0,
              txName: nameController.text,
              txAmount: usdtController.text,
              pwd: pwdPay,
              receiveAccount: receivingAccountController.text)
          .then((value) {
        value.ifSuccess((data) {
          EasyLoading.showSuccess(data?.msg ?? "");
          initData();
        });
        value.ifFailure((e) {
          EasyLoading.showError(e.message);
        });
      });
    });
  }

  void initData() {
    txIn = null;
    txOut = null;
    getTransferConfig().then((value) {
      EasyLoading.dismiss();
      value.ifSuccess((data) {
        if (mounted) {
          setState(() {
            txConfig = data;
            txInList = data.data?.inMethod ?? [];
            txOutList = data.data?.outMethod ?? [];
            usdtController.text = "";
            nameController.text = "";
            receivingAccountController.text = "";
          });
        }
      });
      value.ifFailure((e) {
        EasyLoading.showError(e.message);
      });
    });
    getOnlineRechargeTypeList().then((value) {
      value.ifSuccess((data) {
        if (mounted) {
          setState(() {
            conversionRate = double.parse(data?.cnyusd ?? "0");
            cny = conversionRate * 1;
          });
        }
      });
      value.ifFailure((e) {});
    });
  }

  void pickTxIn(String value) {
    InMethod tempTxIn = txInList.where((e) => e.title == value).toList().first;
    if (txOut != null) {
      if (txOut?.id != tempTxIn.id) {
        final title =
            txInList.where((e) => e.id == txOut?.id).toList().first.title;
        EasyLoading.showError("请选择 $title");
        return;
      }
    }
    setState(() {
      txIn = tempTxIn;
    });
  }

  void pickTxOut(String value) {
    OutMethod tempTxOut =
        txOutList.where((e) => e.title == value).toList().first;
    if (txIn != null) {
      if (txIn?.id != tempTxOut.id) {
        final title =
            txOutList.where((e) => e.id == txIn?.id).toList().first.title;
        EasyLoading.showError("请选择 $title");
        return;
      }
    }
    setState(() {
      txOut = tempTxOut;
    });
  }

  @override
  Widget build(BuildContext context) {
    return EasyRefresh(
      header: Constants().refreshHeader,
      onRefresh: () async {
        initData();
      },
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 21.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RoundContainer(
                vertical: 12.h,
                imagePath: UIAssets.source!.icCardBg,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppLocalImage(
                      path: UIAssets.source!.icBank,
                      width: 16.w,
                      height: 13.w,
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text("我的专属收款账号: ${txConfig?.data?.invicode ?? ""}",
                        style: TextStyle(
                            fontSize: 15.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            height: 1.4)),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        FlutterClipboard.copy(txConfig?.data?.invicode ?? "")
                            .then((value) {
                          EasyLoading.showSuccess("复制成功");
                        });
                      },
                      child: Text(
                        context.l10n?.copy ?? "",
                        style: TextStyle(
                            fontSize: 12.sp,
                            height: 1.2,
                            color: Colors.white,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 36.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("转账信息",
                      style: TextStyle(
                          fontSize: 16.sp,
                          color: AppTheme().wordPrimaryColor,
                          fontWeight: FontWeight.w400,
                          height: 1.4)),
                  GestureDetector(
                    onTap: () {
                      showRecipientsRecordBottomSheet(context);
                    },
                    child: Text("历史收款人",
                        style: TextStyle(
                            fontSize: 14.sp,
                            color: AppTheme().themeBackGroundColor,
                            fontWeight: FontWeight.w400,
                            height: 1.4)),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              RoundContainer(
                vertical: 5.h,
                horizontal: 16.w,
                child: TextField(
                  style: TextStyle(
                    color: AppTheme().wordPrimaryColor, // 设置输入文本的颜色为红色
                  ),
                  textAlign: TextAlign.start,
                  controller: nameController,
                  cursorColor: AppTheme().wordPrimaryColor,
                  decoration: InputDecoration(
                    hintText: '请输入会员姓名',
                    hintStyle: TextStyle(
                        fontSize: 15.sp,
                        color: AppTheme().wordSecondColor,
                        fontWeight: FontWeight.w400,
                        height: 1),
                    border: InputBorder.none, // 无边框
                  ),
                  onChanged: (value) {},
                ),
              ),
              SizedBox(height: 10.h),
              RoundContainer(
                vertical: 5.h,
                horizontal: 16.w,
                child: TextField(
                  style: TextStyle(
                    color: AppTheme().wordPrimaryColor, // 设置输入文本的颜色为红色
                  ),
                  textAlign: TextAlign.start,
                  controller: receivingAccountController,
                  cursorColor: AppTheme().wordPrimaryColor,
                  keyboardType:
                      const TextInputType.numberWithOptions(decimal: true),
                  inputFormatters: [
                    FilteringTextInputFormatter(RegExp("[0-9.]"), allow: true),
                    DKNumberTextInputFormatter(digit: 0),
                  ],
                  decoration: InputDecoration(
                    hintText: '请输入会员收款账号',
                    hintStyle: TextStyle(
                        fontSize: 15.sp,
                        color: AppTheme().wordSecondColor,
                        fontWeight: FontWeight.w400,
                        height: 1),
                    border: InputBorder.none, // 无边框
                  ),
                  onChanged: (value) {},
                ),
              ),
              SizedBox(height: 35.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '选择收款方式',
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: AppTheme().wordPrimaryColor,
                        fontWeight: FontWeight.w400,
                        height: 1.2),
                  ),
                  // Text(
                  //   '如何购买/充值？',
                  //   style: TextStyle(
                  //       fontSize: 26.sp,
                  //       color: const Color(0xFF3ABDFE),
                  //       fontWeight: FontWeight.w400,
                  //       height: 1.2),
                  // ),
                ],
              ),
              SizedBox(height: 20.h),
              ArrowRightRoundContainer(
                onClick: () {
                  PickerBottomPicker.pickerNormal(context,
                      pickers: txInList.map((e) => e.title).toList(),
                      onSelected: (value) {
                    pickTxIn(value);
                  });
                },
                text: txIn == null ? '选择收款方式' : txIn?.title ?? "",
                textColor: txIn == null
                    ? AppTheme().wordSecondColor
                    : AppTheme().wordPrimaryColor,
              ),
              SizedBox(height: 35.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '转账金额',
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: AppTheme().wordPrimaryColor,
                        fontWeight: FontWeight.w400,
                        height: 1.2),
                  ),
                  Expanded(
                    child: Text(
                      textAlign: TextAlign.end,
                      '投资余额 ${txConfig?.data?.amount ?? ""} USDT, 提现余额 ${txConfig?.data?.txmoney ?? ""} USDT',
                      style: TextStyle(
                          fontSize: 11.sp,
                          color: AppTheme().wordSecondColor,
                          fontWeight: FontWeight.w400,
                          height: 1),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  SizedBox(height: 20.h),
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              RoundContainer(
                vertical: 8.h,
                horizontal: 16.w,
                child: Column(
                  children: [
                    AmountInputWidget(
                      controller: usdtController,
                      hintText: '不能大于当前余额',
                      digit: 6,
                      prefixString: '\$',
                      onChanged: (value) {
                        setState(() {
                          double input = 0;
                          if (value.isEmpty || double.parse(value) == 0) {
                            input = 0;
                          } else {
                            input = double.parse(value);
                          }
                          cny = input * conversionRate;
                        });
                      },
                    ),
                    SizedBox(height: 5.h),
                    // 显示两行文本在输入框下面
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '1USDT=${conversionRate}CNY',
                          style: TextStyle(
                              color: const Color(0xFFFFCC90),
                              fontSize: 14.sp,
                              height: 1.2,
                              fontWeight: FontWeight.w400),
                        ),
                        Text(
                          '${cny.toStringAsFixed(2)}CNY',
                          style: TextStyle(
                              color: const Color(0xFFFFCC90),
                              fontSize: 14.sp,
                              height: 1.2,
                              fontWeight: FontWeight.w400),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 35.h,
              ),
              Text(
                '选择转出方式',
                style: TextStyle(
                    fontSize: 16.sp,
                    color: AppTheme().wordPrimaryColor,
                    fontWeight: FontWeight.w400,
                    height: 1.2),
              ),
              SizedBox(
                height: 20.h,
              ),
              ArrowRightRoundContainer(
                onClick: () {
                  PickerBottomPicker.pickerNormal(context,
                      pickers: txOutList.map((e) => e.title).toList(),
                      onSelected: (value) {
                    pickTxOut(value);
                  });
                },
                text: txOut == null ? '选择转出方式' : txOut?.title ?? "",
                textColor: txOut == null
                    ? AppTheme().wordSecondColor
                    : AppTheme().wordPrimaryColor,
              ),
              SizedBox(
                height: 10.h,
              ),
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                  text: "从 ",
                  style: TextStyle(
                      color: AppTheme().wordPrimaryColor,
                      fontSize: 12.sp,
                      height: 2,
                      fontWeight: FontWeight.w400),
                ),
                TextSpan(
                  text: "提现余额 ",
                  style: TextStyle(
                      color: AppTheme().redThemeColor,
                      fontSize: 12.sp,
                      height: 2,
                      fontWeight: FontWeight.w400),
                ),
                TextSpan(
                  text: "转出 ",
                  style: TextStyle(
                      color: AppTheme().wordPrimaryColor,
                      fontSize: 12.sp,
                      height: 2,
                      fontWeight: FontWeight.w400),
                ),
                TextSpan(
                  text: "奖励1%",
                  style: TextStyle(
                      color: AppTheme().redThemeColor,
                      fontSize: 12.sp,
                      height: 2,
                      fontWeight: FontWeight.w400),
                ),
              ])),
              SizedBox(
                height: 40.h,
              ),
              GradientButton(
                  text: "申请转账",
                  onPressed: (index) {
                    FocusScope.of(context).requestFocus(FocusNode());
                    commit();
                  }),
              SizedBox(
                height: 30.h,
              ),
              Text(
                txConfig?.data?.tip ?? "",
                style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    height: 1.2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
