import 'dart:typed_data';

import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_utils/components/gradient_button.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';
import 'package:image/image.dart' as img;

import 'signature_pad.dart'
    if (dart.library.io) 'signature_pad_mobile.dart'
    if (dart.library.html) 'signature_pad_web.dart';

class SignaturePadWidget extends StatefulWidget {
  const SignaturePadWidget({super.key});

  @override
  State<SignaturePadWidget> createState() => _SignaturePadWidgetState();
}

class _SignaturePadWidgetState extends State<SignaturePadWidget> {
  final GlobalKey<SfSignaturePadState> signatureGlobalKey = GlobalKey();
  ScreenshotController screenshotController = ScreenshotController();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Future uploadSignature() async {
    final signaturePad = SignaturePadImpl();
    final pngBytes = await signaturePad.signature(signatureGlobalKey,
        MediaQuery.of(context).size.width, MediaQuery.of(context).size.height);
    if (pngBytes != null) {
      img.Image? originalImage = img.decodeImage(pngBytes);
      if (originalImage == null) {
        throw Exception('无法解码图片');
      }
      img.Image rotatedImage = img.copyRotate(originalImage, angle: -90);
      Uint8List rotatedData = Uint8List.fromList(img.encodePng(rotatedImage));
      final String newId = const Uuid().v1();
      MultipartFile multipartFile = MultipartFile.fromBytes(
        rotatedData,
        filename: '$newId.png',
        contentType: DioMediaType('image', 'png'),
      );
      EasyLoading.show();
      uploadUintListImage([multipartFile]).then((value) {
        EasyLoading.dismiss();
        value.ifSuccess((data) {
          context.pop(data.src ?? "");
        });
        value.ifFailure((e) {
          EasyLoading.showError(e.message);
        });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 16.h),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Column(
                children: [
                  RotatedBox(
                    quarterTurns: 1,
                    child: Text(
                      '请在上方空白处书写你的签名',
                      style: TextStyle(
                          fontSize: 14.sp,
                          color: AppTheme().wordPrimaryColor,
                          height: 1.2),
                    ),
                  ),
                  const Spacer(),
                  RotatedBox(
                    quarterTurns: 1,
                    child: GradientButton(
                        vertical: 0,
                        horizontal: 54.w,
                        borderWidth: 1.0,
                        borderColor: AppTheme().dividerLineColor,
                        textColor: AppTheme().wordPrimaryColor,
                        gradientColors: const [
                          Colors.transparent,
                          Colors.transparent
                        ],
                        text: "重写",
                        onPressed: (index) {
                          signatureGlobalKey.currentState!.clear();
                        }),
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  RotatedBox(
                    quarterTurns: 1,
                    child: GradientButton(
                        bounceTime: 5000,
                        vertical: 0,
                        horizontal: 38.w,
                        text: "提交签名",
                        onPressed: (index) {
                          uploadSignature();
                        }),
                  ),
                ],
              )),
          SizedBox(
            width: 15.w,
          ),
          Expanded(
              flex: 6,
              child: RoundContainer(
                vertical: 10.h,
                horizontal: 10.w,
                child: SfSignaturePad(
                    key: signatureGlobalKey,
                    backgroundColor: Colors.white,
                    strokeColor: Colors.black,
                    minimumStrokeWidth: 1.0,
                    maximumStrokeWidth: 4.0),
              ))
        ],
      ),
    );
  }
}
