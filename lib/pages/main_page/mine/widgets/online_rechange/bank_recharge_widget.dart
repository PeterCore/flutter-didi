import 'package:dk_net_work/http_provider/rest_client_utils.dart';
import 'package:dk_net_work/models/online_recharge_type_model.dart';
import 'package:dk_utils/components/gradient_button.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

import '../../../../../common/upload_image_sheet.dart';
import '../../../../../components/upload_grid_widget.dart';

class BankRechargeWidget extends StatefulWidget {
  const BankRechargeWidget(
      {super.key, this.payment, this.conversionRate = 7.2});
  final Payment? payment;
  final double conversionRate;
  @override
  State<BankRechargeWidget> createState() => _BankRechargeWidgetState();
}

class _BankRechargeWidgetState extends State<BankRechargeWidget> {
  final TextEditingController cnyController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  double usdt = 1;
  String selectChainName = '';
  final UploadImageController controller = UploadImageController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    cnyController.dispose();
    nameController.dispose();
    super.dispose();
  }

  void commit() {
    if (cnyController.text.isEmpty) {
      EasyLoading.showError("请填写充值金额");
      return;
    }
    if (cnyController.text.isNotEmpty) {
      double value = double.parse(cnyController.text);
      double min = (widget.payment?.minmoney ?? 0).toDouble();
      double max = (widget.payment?.maxmoney ?? 0).toDouble();
      if (value < min && value > max) {
        EasyLoading.showError("输入金额要在$min与$max之间");
        return;
      }
    }
    if (nameController.text.isEmpty) {
      EasyLoading.showError("请输入付款人姓名");
      return;
    }
    if (controller.file == null) {
      EasyLoading.showError("选择转帐截图");
      return;
    }
    EasyLoading.show();
    controller.uploadImageSource(onImageUrl: (url) {
      EasyLoading.show();
      commitCNY(
        paymentId: "${widget.payment?.id ?? 0}",
        upFile: url,
        name: nameController.text,
        amount: cnyController.text,
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
          height: 20.h,
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
          horizontal: 16.w,
          vertical: 8.h,
          child: Column(
            children: [
              AmountInputWidget(
                controller: cnyController,
                hintText: '请输入人民币充值金额',
                digit: 2,
                prefixString: "¥",
                onChanged: (value) {
                  setState(() {
                    double input = 0;
                    if (value.isEmpty || double.parse(value) == 0) {
                      input = 0;
                    } else {
                      input = double.parse(value);
                    }
                    usdt = input / widget.conversionRate;
                  });
                },
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
                    '实际到账${usdt.toStringAsFixed(2)}USDT',
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
        SizedBox(height: 10.h),
        Text(
          '付款人姓名',
          style: TextStyle(
              fontSize: 16.sp,
              color: AppTheme().wordPrimaryColor,
              height: 1.2,
              fontWeight: FontWeight.w400),
        ),
        SizedBox(height: 20.h),
        RoundContainer(
          horizontal: 16.w,
          vertical: 5.h,
          child: TextField(
            style: TextStyle(
                fontSize: 15.sp,
                color: AppTheme().wordPrimaryColor,
                fontWeight: FontWeight.w400,
                height: 1),
            textAlign: TextAlign.start,
            controller: nameController,
            cursorColor: AppTheme().wordPrimaryColor,
            // 只允许输入中文
            decoration: InputDecoration(
              hintText: '请输入付款人姓名',
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
        SizedBox(height: 15.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            UploadGridWidget(
              controller: controller,
            )
          ],
        ),
        SizedBox(
          height: 50.h,
        ),
        GradientButton(
            text: "提交充值订单",
            onPressed: (index) {
              commit();
            }),
      ],
    );
  }
}
