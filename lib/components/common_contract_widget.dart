import 'package:dk_utils/components/gradient_button.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

import '../../../../../router_config.dart';

class CommonContractWidget extends StatefulWidget {
  final String data;
  final bool isSignature;
  final Function(String) onConfirm;
  const CommonContractWidget({
    super.key, 
    this.data = '', 
    this.isSignature = false,
    required this.onConfirm,
  });

  @override
  State<CommonContractWidget> createState() => _CommonContractWidgetState();
}

class _CommonContractWidgetState extends State<CommonContractWidget> {
  String signatureUrl = "";

  @override
  Widget build(BuildContext context) {
    return widget.data.isEmpty ? const SizedBox() :
    SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildContractContent(),
            SizedBox(height: 16.h),
            if (widget.isSignature) ...[
              _buildSignatureTitle(),
              SizedBox(height: 16.h),
              _buildSignatureArea(),
              SizedBox(height: 16.h),
            ],
            if (widget.isSignature)
            _buildSubmitButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildContractContent() {
    return RoundContainer(
      horizontal: 16.h,
      vertical: 16.w,
      child: SizedBox(
        width: double.infinity,
        child: HtmlWidget(widget.data, 
          customWidgetBuilder: (element) {
            if (element.attributes["src"] != null) {
              return Container(
                height: 0,
              );
            }
            return null;
          },
        ),
      ) ,
    );
  }

  Widget _buildSignatureTitle() {
    return Text(
      '签名',
      style: TextStyle(
        fontSize: 18.sp,
        color: AppTheme().wordPrimaryColor,
        height: 1.2,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  Widget _buildSignatureArea() {
    return SizedBox(
      height: 150.h,
      child: RoundContainer(
        horizontal: 0.w,
        vertical: 0.h,
        child: signatureUrl.isNotEmpty
            ? _buildSignatureImage()
            : _buildSignatureButton(),
      ),
    );
  }

  Widget _buildSignatureImage() {
    return Center(
      child: CachedNetworkImage(
        fit: BoxFit.cover,
        imageUrl: signatureUrl,
        errorWidget: (context, url, error) => const Center(
          child: Icon(
            Icons.error_outline,
            color: Colors.grey,
            size: 28,
          ),
        ),
        placeholder: (context, url) => Image(image: MemoryImage(kTransparentImage)),
        fadeInDuration: const Duration(milliseconds: 0),
      ),
    );
  }

  Widget _buildSignatureButton() {
    return Center(
      child: GradientButton(
        borderWidth: 1.0,
        borderColor: Colors.transparent,
        textColor: AppTheme().wordPrimaryColor,
        gradientColors: const [Colors.transparent, Colors.transparent],
        text: "点击签名",
        onPressed: _handleSignature,
      ),
    );
  }

  Widget _buildSubmitButton() {
    return GradientButton(
      text: "确认提交",
      onPressed: _handleSubmit,
    );
  }

  void _handleSignature(int index) async {
    final src = await pushPage(context, path: PagePath.signaturePadPage);
    if (src is String) {
      setState(() {
        signatureUrl = src;
      });
    }
  }

  void _handleSubmit(int index) {
    if (widget.isSignature && signatureUrl.isEmpty) {
      EasyLoading.showError("请电子签名");
      return;
    }
    widget.onConfirm(signatureUrl);
  }
}