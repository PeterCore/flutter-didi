import 'package:churn/common/upload_image_sheet.dart';
import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_net_work/models/online_recharge_type_model.dart';
import 'package:dk_utils/components/gradient_button.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:dk_utils/utils/tron_utils.dart';
import 'package:flutter/material.dart';

import '../../../../../components/upload_grid_widget.dart';
import '../../../../../router_config.dart';

class OnlineChainRechargeWidget extends StatefulWidget {
  const OnlineChainRechargeWidget(
      {super.key, this.payment, this.conversionRate = 7.2});
  final Payment? payment;
  final double conversionRate;
  @override
  State<OnlineChainRechargeWidget> createState() =>
      _OnlineChainRechargeWidgetState();
}

class _OnlineChainRechargeWidgetState extends State<OnlineChainRechargeWidget> {
  final TextEditingController usdtController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  double cny = 1;
  String selectChainName = '';
  final UploadImageController controller = UploadImageController();
  @override
  void initState() {
    // TODO: implement initState
    cny = widget.conversionRate * 1;
    super.initState();
  }

  @override
  void dispose() {
    usdtController.dispose();
    addressController.dispose();
    super.dispose();
  }

  void commit() {
    if (usdtController.text.isEmpty) {
      EasyLoading.showError("请填写充值金额");
      return;
    }
    if (usdtController.text.isNotEmpty) {
      double value = double.parse(usdtController.text);
      double min = (widget.payment?.minmoney ?? 0).toDouble();
      double max = (widget.payment?.maxmoney ?? 0).toDouble();
      if (value < min && value > max) {
        EasyLoading.showError("输入金额要在$min与$max之间");
        return;
      }
    }
    if (selectChainName.isEmpty) {
      EasyLoading.showError("请选择充值方式");
      return;
    }
    if (addressController.text.isEmpty) {
      EasyLoading.showError("请输入钱包地址");
      return;
    }
    if (addressController.text.isNotEmpty) {
      bool isValid = TronUtils.isValidTronAddress(addressController.text);
      if (!isValid) {
        EasyLoading.showError("无效的钱包地址");
        return;
      }
    }
    if (controller.file == null) {
      EasyLoading.showError("选择转帐截图");
      return;
    }
    EasyLoading.show();
    controller.uploadImageUint8List(onImageUrl: (url) {
      EasyLoading.show();
      commitUSDT(
        paymentId: "${widget.payment?.id ?? 0}",
        upFile: url,
        address: addressController.text,
        amount: usdtController.text,
        usdtLian: selectChainName,
      ).then((value) {
        EasyLoading.dismiss();
        value.ifSuccess((data) {
          EasyLoading.showSuccess("${data.msg}");
        });
        value.ifFailure((e) {
          EasyLoading.showError(e.message);
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 16.h,
        ),
        Text(
          widget.payment?.payDesc ?? "",
          style: TextStyle(
              fontSize: 12.sp,
              color: AppTheme().wordPrimaryColor,
              fontWeight: FontWeight.w400,
              height: 1.4),
        ),
        SizedBox(
          height: 40.h,
        ),
        Text(
          '充值金额',
          style: TextStyle(
              fontSize: 16.sp,
              color: AppTheme().wordPrimaryColor,
              height: 1.2,
              fontWeight: FontWeight.w400),
        ),
        SizedBox(height: 16.h),
        // 包裹输入框的圆角矩形
        RoundContainer(
          vertical: 12.h,
          child: Column(
            children: [
              AmountInputWidget(
                controller: usdtController,
                hintText: '请输入充值金额',
                digit: 6,
                prefixString: "\$",
                onChanged: (value) {
                  setState(() {
                    double input = 0;
                    if (value.isEmpty || double.parse(value) == 0) {
                      input = 0;
                    } else {
                      input = double.parse(value);
                    }
                    cny = input * widget.conversionRate;
                  });
                },
              ),
              Divider(
                color: AppTheme().dividerLineColor,
                thickness: 0.5,
                height: 0.5, // 避免分割线占用过多空间
              ),
              SizedBox(height: 10.h),
              // 显示两行文本在输入框下面
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '1USDT=${widget.conversionRate}CNY',
                    style: TextStyle(
                        color: AppTheme().themeBackGroundColor,
                        fontSize: 14.sp,
                        height: 1.2,
                        fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '${cny.toStringAsFixed(2)}CNY',
                    style: TextStyle(
                        color: AppTheme().themeBackGroundColor,
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
        SizedBox(height: 20.h),
        Text(
          '选择充值方式',
          style: TextStyle(
              fontSize: 16.sp,
              color: AppTheme().wordPrimaryColor,
              height: 1.2,
              fontWeight: FontWeight.w400),
        ),
        SizedBox(height: 10.h),
        ArrowRightRoundContainer(
          onClick: () {
            PickerBottomPicker.pickerNormal(context,
                pickers: ["TRC20 波场链（Tron）"], onSelected: (value) {
              setState(() {
                selectChainName = value;
              });
            });
          },
          text: selectChainName.isEmpty ? '选择充值方式' : selectChainName,
          textColor: selectChainName.isEmpty
              ? AppTheme().wordSecondColor
              : AppTheme().wordPrimaryColor,
        ),

        SizedBox(height: 8.h),
        RoundContainer(
          horizontal: 16.w,
          vertical: 5.h,
          child: TextField(
            style: TextStyle(
              color: AppTheme().wordPrimaryColor,
            ),
            textAlign: TextAlign.start,
            controller: addressController,
            cursorColor: AppTheme().wordPrimaryColor,
            decoration: InputDecoration(
              hintText: '请输入付款钱包地址(请勿填写充值地址)',
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
        SizedBox(height: 8.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {
                pushPage(context, path: PagePath.userGuidePage);
              },
              child: Text(
                '如何获取付款钱包地址？',
                style: TextStyle(
                    fontSize: 14.sp,
                    color: AppTheme().themeBackGroundColor,
                    height: 1.2,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            UploadGridWidget(
              controller: controller,
            )
          ],
        ),
        SizedBox(
          height: 25.h,
        ),
        GradientButton(
            text: "提交充值订单",
            onPressed: (index) {
              FocusScope.of(context).requestFocus(FocusNode());
              commit();
            }),
      ],
    );
  }
}
