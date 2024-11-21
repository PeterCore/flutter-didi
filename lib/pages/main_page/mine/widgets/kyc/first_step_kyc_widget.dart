import 'package:churn/assets_tool/ui_assets.dart';
import 'package:churn/l10n/l10n.dart';
import 'package:dk_net_work/view_models/kyc_info_view_model.dart';
import 'package:dk_net_work/view_models/services_locatar.dart';
import 'package:dk_net_work/view_models/user_info_view_model.dart';
import 'package:dk_utils/components/gradient_button.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../../router_config.dart';
import 'kyc_id_card_widget.dart';

class FirstStepKycWidget extends StatefulWidget {
  const FirstStepKycWidget(
      {super.key,
      this.onUpload,
      required this.isHeaderTail,
      required this.isHands});
  final bool isHeaderTail;
  final bool isHands;
  final Function(
      (
        String name,
        String idCardNo,
        String imageHeader,
        String imageTails,
        String imageHands
      ) params)? onUpload;
  @override
  State<FirstStepKycWidget> createState() => _FirstStepKycWidgetState();
}

class _FirstStepKycWidgetState extends State<FirstStepKycWidget> {
  final KycInfoViewModel kycInfoViewModel = serviceLocator<KycInfoViewModel>();

  final _nameController = TextEditingController();
  final _idCardController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  late String _imageHeader = '';
  late String _imageTails = '';
  late String _imagehands = '';

  // 身份证号码正则表达式
  final RegExp _idCardRegExp = RegExp(
    r'^[1-9]\d{5}(18|19|20)\d{2}(0[1-9]|1[0-2])(0[1-9]|[12]\d|3[01])\d{3}(\d|X|x)$',
  );
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final UserInfoViewModel userInfoModel =
          serviceLocator<UserInfoViewModel>();
      bool isPay = userInfoModel.data?.ispay == 1;
      if (!isPay) {
        showCustomDialog(
          context: context,
          title: '提示',
          content: '请先设置支付密码再进行实名认证！',
          onConfirm: () {
            // 确定按钮的处理逻辑
            pushPage(context, path: PagePath.payPassWordPage);
            Navigator.of(context).pop();
          },
        );
      }
    });
  }

  String? _validateIdCard(String? value) {
    if (value == null || value.isEmpty) {
      return '请输入身份证号';
    } else if (!_idCardRegExp.hasMatch(value)) {
      return '请输入有效的身份证号';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(16.0.r),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildRoundedInputFields(),
              SizedBox(height: 24.h),
              //身份证上传模块
              if (widget.isHeaderTail)
                KycIdCardWidget(
                  imagePath: UIAssets.source!.idcardH,
                  label: '身份证正面',
                  onImage: (url) {
                    _imageHeader = url;
                  },
                ),
              SizedBox(height: 12.h),
              if (widget.isHeaderTail)
                KycIdCardWidget(
                  imagePath: UIAssets.source!.idcardT,
                  label: '身份证反面',
                  onImage: (url) {
                    _imageTails = url;
                  },
                ),
              SizedBox(height: 12.h),
              if (widget.isHands)
                KycIdCardWidget(
                  imagePath: UIAssets.source!.idcardB,
                  label: '手持身份证',
                  onImage: (url) {
                    _imagehands = url;
                  },
                ),
              SizedBox(height: 29.h),
              // const Spacer(),
              GradientButton(
                text: context.l10n?.certifyId ?? "",
                onPressed: (index) {
                  if (_nameController.text.isEmpty) {
                    EasyLoading.showError("请输入姓名");
                    return;
                  } else if (_idCardController.text.isEmpty) {
                    EasyLoading.showError("请输入身份证号码");
                  } else if (widget.isHeaderTail == true) {
                    if (_imageHeader.isEmpty) {
                      EasyLoading.showError("请先上传头像");
                      return;
                    } else if (_imageTails.isEmpty) {
                      EasyLoading.showError("请先上传国徽");
                      return;
                    }
                  } else if (widget.isHands == true) {
                    if (_imagehands.isEmpty) {
                      EasyLoading.showError("请先上传手持身份证照");
                      return;
                    }
                  }
                  widget.onUpload?.call((
                    _nameController.text,
                    _idCardController.text,
                    _imageHeader,
                    _imageTails,
                    _imagehands
                  ));
                },
              ),
              SizedBox(height: 29.h),
              RoundContainer(
                child: Text(
                  kycInfoViewModel.certification?.msg ?? "",
                  style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                      height: 1.2,
                      color: AppTheme().wordPrimaryColor),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRoundedInputFields() {
    return RoundContainer(
      vertical: 0,
      child: Column(
        children: [
          _buildInputField(
            label: '姓名',
            hintText: '请输入姓名',
            controller: _nameController,
            inputFormatters: RegexUtils.allowChinese(),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return '请输入姓名';
              }
              return null;
            },
          ),
          SizedBox(
            height: 1, // 控制分割线的高度
            child: Divider(
              color: AppTheme().dividerLineColor, // 分割线颜色
              thickness: 0.1, // 分割线厚度
            ),
          ),
          _buildInputField(
            label: '身份证号码',
            hintText: '请输入身份证号码',
            onChanged: (value) {
              if (value.length == 18) {
                bool isValid = RegexUtils.validateIDCard(value);
                if (!isValid) {
                  _idCardController.clear(); // 如果身份证非法则清空输入框
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                    content: Text('身份证号码不合法'),
                    backgroundColor: Colors.red,
                  ));
                }
              }
            },
            inputFormatters: RegexUtils.allowIdCard(),
            controller: _idCardController,
            validator: _validateIdCard,
          ),

          // _buildSubmitButton(),
        ],
      ),
    );
  }

  // 无边框输入框
  Widget _buildInputField(
      {required String label,
      required String hintText,
      required TextEditingController controller,
      required String? Function(String?)? validator,
      Function(String)? onChanged,
      List<TextInputFormatter>? inputFormatters}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Label 部分
          SizedBox(
            width: _calculateLabelWidth(label), // 动态计算Label宽度
            child: Text(
              label,
              style: TextStyle(
                  color: AppTheme().wordPrimaryColor,
                  fontSize: 14.sp,
                  height: 1.2,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Expanded(
            child: TextFormField(
              inputFormatters: inputFormatters,
              controller: controller,
              validator: validator,
              cursorColor: AppTheme().wordPrimaryColor,
              style: TextStyle(
                  color: AppTheme().wordPrimaryColor,
                  fontSize: 14.sp,
                  height: 1.2,
                  fontWeight: FontWeight.w400),
              onChanged: onChanged,
              decoration: InputDecoration(
                hintText: hintText,
                hintStyle: TextStyle(
                    color: const Color(0xFF666666),
                    fontSize: 14.sp,
                    height: 1.2,
                    fontWeight: FontWeight.w400),
                border: InputBorder.none, // 无边框
                contentPadding: EdgeInsets.symmetric(horizontal: 8.h),
              ),
            ),
          ),
        ],
      ),
    );
  }

  double _calculateLabelWidth(String label) {
    // 可以根据实际设计调整这个宽度，比如返回固定值，或更复杂的逻辑
    switch (label) {
      case '姓名':
        return 100; // 姓名占用50px宽度
      case '身份证号码':
        return 100; // 身份证号占用100px宽度
      default:
        return 100; // 默认宽度
    }
  }
}
