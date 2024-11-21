import 'package:churn/components/pay_psw_sheet.dart';
import 'package:dk_net_work/models/user_default_address_info.dart';
import 'package:dk_utils/components/gradient_button.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../config/config_picker_address_styles.dart';
import '../../logic/address_info_provider.dart';

class AddressEditWidget extends StatefulWidget {
  const AddressEditWidget({super.key, this.addressInfo});

  final AddressInfo? addressInfo;

  @override
  State<AddressEditWidget> createState() => _AddressEditWidgetState();
}

class _AddressEditWidgetState extends State<AddressEditWidget> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _detailAddressController =
      TextEditingController();
  bool _isDefault = true; // 是否设为默认地址
  String _selectedRegion = '';
  double width = 80.w;
  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (widget.addressInfo?.name != null &&
          widget.addressInfo!.name!.isNotEmpty) {
        _nameController.text = widget.addressInfo?.name ?? '';
      }
      if (widget.addressInfo?.phone != null &&
          widget.addressInfo!.phone!.isNotEmpty) {
        _phoneController.text = widget.addressInfo?.phone ?? '';
      }
      if (widget.addressInfo?.location != null &&
          widget.addressInfo!.location!.isNotEmpty) {
        _detailAddressController.text = widget.addressInfo?.location ?? '';
      }
      if (widget.addressInfo?.address != null &&
          widget.addressInfo!.address!.isNotEmpty) {
        _selectedRegion = widget.addressInfo?.address ?? '';
      }
      setState(() {});
    });

    super.initState();
  }

  void _selectRegion() {
    PickerBottomPicker.pickerAddress(context, onSelected: (p, c, t) {
      setState(() {
        _selectedRegion = "$p $c $t";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Consumer(builder: (context, ref, child) {
        final addressP = ref.read(addressInfoProvider);
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 圆角矩形容器
              RoundContainer(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // 收货人
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: width, // 设置固定宽度以确保对齐
                          child: Text(
                            '收货人：',
                            style: TextStyleUtils.getTextStyle(
                                AppTheme().wordPrimaryColor), // 前缀文字使用封装样式
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            cursorColor: AppTheme().wordPrimaryColor,
                            controller: _nameController,
                            style: TextStyleUtils.getTextStyle(
                                AppTheme().wordPrimaryColor), // 使用封装样式
                            textAlign: TextAlign.left, // 左对齐
                            decoration: InputDecoration(
                              hintText: '请输入姓名',
                              hintStyle: TextStyleUtils.getTextStyle(
                                  Colors.grey), // 统一的灰色字体样式
                              border: InputBorder.none, // 无边框
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1, // 控制分割线的高度
                      child: Divider(
                        color: AppTheme().dividerLineColor, // 分割线颜色
                        thickness: 0.1, // 分割线厚度
                      ),
                    ),
                    // 手机号码
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: width, // 设置固定宽度以确保对齐
                          child: Text(
                            '电话号码：',
                            style: TextStyleUtils.getTextStyle(
                                AppTheme().wordPrimaryColor), // 前缀文字使用封装样式
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            cursorColor: AppTheme().wordPrimaryColor,
                            inputFormatters:
                                RegexUtils.allowMobile(), // 只允许输入中文

                            controller: _phoneController,
                            keyboardType: TextInputType.phone,
                            style: TextStyleUtils.getTextStyle(
                                AppTheme().wordPrimaryColor), // 使用封装样式
                            textAlign: TextAlign.left, // 左对齐
                            decoration: InputDecoration(
                              hintText: '请输入手机号',
                              hintStyle: TextStyleUtils.getTextStyle(
                                  Colors.grey), // 统一的灰色字体样式
                              border: InputBorder.none, // 无边框
                            ),
                            onChanged: (value) {
                              // if (!isValidPhoneNumber(value)) {
                              //   ScaffoldMessenger.of(context).showSnackBar(
                              //     SnackBar(
                              //       content: Text('请输入有效的手机号'),
                              //     ),
                              //   );
                              // }
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1, // 控制分割线的高度
                      child: Divider(
                        color: AppTheme().dividerLineColor, // 分割线颜色
                        thickness: 0.1, // 分割线厚度
                      ),
                    ),

                    // 所在地区
                    GestureDetector(
                      onTap: _selectRegion,
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 24.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: width, // 设置固定宽度以确保对齐
                              child: Text(
                                '所在地址：',
                                style: TextStyleUtils.getTextStyle(
                                    AppTheme().wordPrimaryColor), // 前缀文字使用封装样式
                              ),
                            ),
                            Expanded(
                              child: Text(
                                _selectedRegion.isEmpty
                                    ? '请选择省市区'
                                    : _selectedRegion, // 显示选择的地区
                                style: TextStyleUtils.getTextStyle(
                                  _selectedRegion.isEmpty
                                      ? Colors.grey
                                      : AppTheme().wordPrimaryColor,
                                ), // 使用封装样式
                                textAlign: TextAlign.left, // 左对齐
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: AppTheme().wordPrimaryColor,
                              size: 20.w,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 1, // 控制分割线的高度
                      child: Divider(
                        color: AppTheme().dividerLineColor, // 分割线颜色
                        thickness: 0.1, // 分割线厚度
                      ),
                    ),
                    // 详细地址
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: width, // 设置固定宽度以确保对齐
                          child: Text(
                            '详细地址：',
                            style: TextStyleUtils.getTextStyle(
                                AppTheme().wordPrimaryColor), // 前缀文字使用封装样式
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            cursorColor: AppTheme().wordPrimaryColor,
                            controller: _detailAddressController,
                            style: TextStyleUtils.getTextStyle(
                                AppTheme().wordPrimaryColor), // 使用封装样式
                            textAlign: TextAlign.left, // 左对齐
                            decoration: InputDecoration(
                              hintText: '如：街道，小区，门牌号等',
                              hintStyle: TextStyleUtils.getTextStyle(
                                  Colors.grey), // 统一的灰色字体样式
                              border: InputBorder.none, // 无边框
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32.h),
              // 设置为默认地址
              RoundContainer(
                vertical: 12.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '设置为默认地址',
                      style: TextStyleUtils.getTextStyle(
                          AppTheme().wordPrimaryColor), // 使用封装样式
                    ),
                    Switch(
                      value: _isDefault,
                      onChanged: (value) {
                        setState(() {
                          _isDefault = value;
                        });
                      },
                      activeColor: AppTheme().themeBackGroundColor,
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 60.h,
              ),
              GradientButton(
                  text: (widget.addressInfo == null) ? "保存地址" : "更新地址",
                  onPressed: (index) {
                    if (_nameController.text.isEmpty) {
                      EasyLoading.showError("请输入收货人姓名");
                      return;
                    } else if (_phoneController.text.isEmpty) {
                      EasyLoading.showError("请输入电话号码");
                      return;
                    } else if (_selectedRegion.isEmpty) {
                      EasyLoading.showError("请选择地区");
                      return;
                    } else if (_detailAddressController.text.isEmpty) {
                      EasyLoading.showError("请填写街道");
                      return;
                    }
                    FocusScope.of(context).requestFocus(FocusNode());
                    showCustomBottomPayPassWordSheet(context, "支付密码", (pin) {},
                        onConfirm: (payPsw) {
                      if (widget.addressInfo == null) {
                        addressP
                            .addNewAddressInfo(
                                isDefault: _isDefault ? 1 : 0,
                                phone: _phoneController.text,
                                pwdPay: payPsw,
                                address: _selectedRegion,
                                location: _detailAddressController.text,
                                name: _nameController.text)
                            .then((value) {
                          if (value) {
                            context.pop();
                          }
                        });
                      } else {
                        addressP
                            .updateAddress(
                                id: widget.addressInfo?.id ?? 0,
                                phone: _phoneController.text,
                                pwdPay: payPsw,
                                address: _selectedRegion,
                                location: _detailAddressController.text,
                                name: _nameController.text)
                            .then((value) {
                          if (value) {
                            context.pop();
                          }
                        });
                      }
                    });
                  })
            ],
          ),
        );
      }),
    );
  }
}
