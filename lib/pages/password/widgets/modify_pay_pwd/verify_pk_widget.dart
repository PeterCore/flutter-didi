import 'package:dk_net_work/http_provider/rest_client_utils.dart';
import 'package:dk_utils/components/gradient_button.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

class VerifyPkWidget extends StatefulWidget {
  const VerifyPkWidget({super.key, this.onComplete});
  final Function(String pk)? onComplete;
  @override
  State<VerifyPkWidget> createState() => _VerifyPkWidgetState();
}

class _VerifyPkWidgetState extends State<VerifyPkWidget> {
  TextEditingController pkController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    pkController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 30.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text("密钥",
              style: TextStyle(
                  fontSize: 16.sp,
                  color: AppTheme().wordPrimaryColor,
                  fontWeight: FontWeight.w400,
                  height: 1.4)),
          SizedBox(height: 31.h),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 5.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(21.r),
              color: AppTheme().roundContainerColor,
            ),
            child: TextField(
              style: TextStyle(
                color: AppTheme().wordPrimaryColor, // 设置输入文本的颜色为红色
              ),
              textAlign: TextAlign.start,
              controller: pkController,
              inputFormatters: RegexUtils.allowSecret(),
              cursorColor: AppTheme().wordPrimaryColor,
              decoration: InputDecoration(
                hintText: '请输入12位密钥',
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
          const Spacer(),
          GradientButton(
              text: "确定",
              onPressed: (index) {
                FocusScope.of(context).requestFocus(FocusNode());
                if (pkController.text.isEmpty) {
                  EasyLoading.showError("请输入密钥");
                }
                EasyLoading.show();
                verifyPwdPk({"miyao": pkController.text, "sortid": 2})
                    .then((value) {
                  EasyLoading.dismiss();
                  value.ifSuccess((data) {
                    widget.onComplete?.call(pkController.text);
                  });
                  value.ifFailure((e) {
                    widget.onComplete?.call("");
                    EasyLoading.showError(e.message);
                  });
                });
              }),
        ],
      ),
    );
  }
}
