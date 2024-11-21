import 'package:churn/assets_tool/ui_assets.dart';
import 'package:churn/pages/main_page/mine/widgets/online_rechange/builder_recharge_widget.dart';
import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_net_work/models/online_recharge_type_model.dart';
import 'package:dk_net_work/view_models/services_locatar.dart';
import 'package:dk_net_work/view_models/user_info_view_model.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../router_config.dart';

class OnlineRechargeWidget extends StatefulWidget {
  const OnlineRechargeWidget({super.key});

  @override
  State<OnlineRechargeWidget> createState() => _OnlineRechargeWidgetState();
}

class _OnlineRechargeWidgetState extends State<OnlineRechargeWidget> {
  final TextEditingController usdtController = TextEditingController();
  final TextEditingController cnyController = TextEditingController();
  final UserInfoViewModel userInfoModel = serviceLocator<UserInfoViewModel>();
  double conversionRate = 6.92;
  List<Payment> payments = [];
  List<String> payNames = [];
  OnlineRechargeTypeModel? rechargeModel;
  Payment? selectPayment;
  String walletAddress = '';
  @override
  void dispose() {
    usdtController.dispose();
    cnyController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    // TODO: implement initState
    getUSDTInfo().then((value) {
      value.ifSuccess((data) {
        walletAddress = data.msg ?? "";
      });
      value.ifFailure((e) {
        // EasyLoading.showError(e.message);
      });
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      initData();
    });
    super.initState();
  }

  void initData() {
    getOnlineRechargeTypeList().then((value) {
      value.ifSuccess((data) {
        if (mounted) {
          setState(() {
            selectPayment = null;
            rechargeModel = data;
            payments = rechargeModel?.payments ?? [];
            conversionRate = double.parse(rechargeModel?.cnyusd ?? "0");
            usdtController.text = "1";
            cnyController.text = "${1 * conversionRate}";
            payNames = payments.map((e) => e.payName ?? "").toList();
          });
        }
      });
      value.ifFailure((e) {});
    });
  }

  void showPayDialog({String title = "", Function()? onConfirm}) {
    Future.delayed(const Duration(milliseconds: 500)).then((_) {
      showCustomDialog(
        context: context,
        title: '提示',
        content: title,
        onCancel: () {
          Navigator.of(context).pop();
        },
        onConfirm: () {
          // 确定按钮的处理逻辑
          Navigator.of(context).pop();
          onConfirm?.call();
        },
      );
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
              // 蓝色圆角矩形，包含投资金额和提现余额
              RoundContainer(
                imagePath: UIAssets.source!.icCardBg,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('投资金额 (USDT)',
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.white.withOpacity(0.6),
                                fontWeight: FontWeight.w400,
                                height: 1.2)),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(rechargeModel?.zhamount ?? "",
                            style: TextStyle(
                                fontSize: 20.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                height: 1.2)),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('提现余额 (USDT)',
                            style: TextStyle(
                                fontSize: 14.sp,
                                color: Colors.white.withOpacity(0.6),
                                fontWeight: FontWeight.w400,
                                height: 1.2)),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(rechargeModel?.txmoney ?? "",
                            style: TextStyle(
                                fontSize: 20.sp,
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                height: 1.2)),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 36.h),
              // 横向排列的两个标题 (多文本表示)
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "外币汇率换算",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: AppTheme().wordPrimaryColor),
                        ),
                        TextSpan(
                          text: " 点击下方输入框可进行金额换算",
                          style: TextStyle(
                              fontSize: 12.sp,
                              color: AppTheme().wordSecondColor,
                              fontWeight: FontWeight.w400,
                              height: 1.2),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 18.h),
              // 横向排列的两个输入框
              RoundContainer(
                child: Row(
                  children: [
                    // USDT 输入框
                    Expanded(
                      child: Row(
                        children: [
                          AppLocalImage(
                            path: UIAssets.source!.usdt,
                            width: 20.w,
                            height: 20.w,
                          ), // 左侧图标
                          // 左侧图标
                          SizedBox(width: 8.w), // 间距
                          Expanded(
                            child: TextField(
                              style: TextStyle(
                                color:
                                    AppTheme().wordPrimaryColor, // 设置输入文本的颜色为红色
                              ),
                              textAlign: TextAlign.center,
                              controller: usdtController,
                              cursorColor: AppTheme().wordPrimaryColor,
                              decoration: InputDecoration(
                                hintText: '请输入',
                                hintStyle: TextStyle(
                                    fontSize: 15.sp,
                                    color: AppTheme().wordSecondColor,
                                    fontWeight: FontWeight.w400,
                                    height: 1),
                                border: InputBorder.none, // 无边框
                              ),
                              keyboardType:
                                  const TextInputType.numberWithOptions(
                                      decimal: true),
                              inputFormatters: [
                                FilteringTextInputFormatter(RegExp("[0-9.]"),
                                    allow: true),
                                DKNumberTextInputFormatter(
                                    maxIntegerLength: 10, digit: 6),
                              ],
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
                          SizedBox(width: 8.w), // 间距
                          Text('USDT',
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  color: AppTheme().wordSecondColor,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2)), // 始终显示的右侧单位
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Text("=",
                        style: TextStyle(
                            fontSize: 15.sp,
                            color: AppTheme().wordPrimaryColor,
                            fontWeight: FontWeight.w400,
                            height: 1)),
                    // CNY 输入框
                    SizedBox(
                      width: 10.w,
                    ),

                    Expanded(
                      child: Row(
                        children: [
                          AppLocalImage(
                            path: UIAssets.source!.cny,
                            width: 20.w,
                            height: 20.w,
                          ), // 左侧图标
                          SizedBox(width: 4.w), // 间距
                          Expanded(
                            child: TextField(
                              style: TextStyle(
                                color: AppTheme().wordPrimaryColor,
                              ),
                              textAlign: TextAlign.center,
                              controller: cnyController,
                              cursorColor: AppTheme().wordPrimaryColor,
                              decoration: InputDecoration(
                                hintText: '请输入',
                                hintStyle: TextStyle(
                                    fontSize: 15.sp,
                                    color: Colors.white.withOpacity(0.6),
                                    fontWeight: FontWeight.w400,
                                    height: 1),
                                border: InputBorder.none, // 无边框
                              ),
                              keyboardType:
                                  const TextInputType.numberWithOptions(
                                      decimal: true),
                              inputFormatters: [
                                FilteringTextInputFormatter(RegExp("[0-9.]"),
                                    allow: true),
                                DKNumberTextInputFormatter(
                                    maxIntegerLength: 10, digit: 2),
                              ],
                              onChanged: (value) {
                                if (value.isEmpty || double.parse(value) == 0) {
                                  usdtController.text = "0";
                                } else {
                                  final curValue = double.parse(value);
                                  final usdt = curValue / conversionRate;
                                  usdtController.text = usdt.toStringAsFixed(2);
                                }
                              },
                            ),
                          ),
                          SizedBox(width: 8.w), // 间距
                          Text('元',
                              style: TextStyle(
                                  fontSize: 15.sp,
                                  color: AppTheme().wordPrimaryColor,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2)), // 始终显示的右侧单位
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20.h),
              // 新增的两个横向排列标题
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '选择充值方式',
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: AppTheme().wordPrimaryColor,
                        fontWeight: FontWeight.w400,
                        height: 1.2),
                  ),
                  GestureDetector(
                    onTap: () {
                      pushPage(context, path: PagePath.userGuidePage);
                    },
                    child: Text(
                      '如何购买/充值？',
                      style: TextStyle(
                          fontSize: 13.sp,
                          color: AppTheme().themeBackGroundColor,
                          fontWeight: FontWeight.w400,
                          height: 1.2),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10.h),

              ArrowRightRoundContainer(
                textColor: selectPayment == null
                    ? AppTheme().wordSecondColor
                    : AppTheme().wordPrimaryColor,
                text: selectPayment == null
                    ? '选择充值方式'
                    : selectPayment?.payName ?? "",
                onClick: () {
                  if (payments.isEmpty) {
                    EasyLoading.showError("加载中...");
                    return;
                  }
                  PickerBottomPicker.pickerNormal(context, pickers: payNames,
                      onSelected: (value) {
                    final selectPayments =
                        payments.where((e) => e.payName == value).toList();
                    if (selectPayments.isNotEmpty) {
                      final payment = selectPayments.first;

                      if (payment.payCode == "UsdtPay") {
                        if (userInfoModel?.data?.isusdt == 0 &&
                            rechargeModel?.rechargeMustBindWallet == 1) {
                          showPayDialog(
                              title: '为了您的资金安全，请先绑定USDT提现地址',
                              onConfirm: () {
                                pushPage(context,
                                    path: PagePath.withdrawsManagerPage);
                              });
                          return;
                        }
                      } else if (payment.payCode == "zxusdt") {
                        if (userInfoModel?.data?.isusdt == 0 &&
                            rechargeModel?.rechargeMustBindWallet == 1) {
                          showPayDialog(
                              title: '为了您的资金安全，请先绑定USDT提现地址',
                              onConfirm: () {
                                pushPage(context,
                                    path: PagePath.withdrawsManagerPage);
                              });
                          return;
                        }
                      }

                      setState(() {
                        selectPayment = selectPayments.first;
                      });
                    }
                  });
                },
              ),

              BuilderRechargeWidget.buildRechargeWidget(selectPayment,
                  conversionRate: conversionRate, walletAddress: walletAddress),

              SizedBox(height: 40.h),
              // 温馨提示
              Text(
                rechargeModel?.tishi ?? "",
                style: TextStyle(
                    fontSize: 15.sp,
                    color: AppTheme().wordSecondColor,
                    fontWeight: FontWeight.w400,
                    height: 1.4),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
