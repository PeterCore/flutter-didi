import 'dart:io';

import 'package:dk_net_work/http_provider/rest_client_utils.dart';
import 'package:dk_utils/constants/app_theme.dart';
import 'package:dk_utils/utils/pick_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class KycIdCardWidget extends StatefulWidget {
  const KycIdCardWidget(
      {super.key, required this.imagePath, required this.label, this.onImage});
  final String imagePath;
  final String label;
  final Function(String imageUrl)? onImage;
  @override
  State<KycIdCardWidget> createState() => _KycIdCardWidgetState();
}

class _KycIdCardWidgetState extends State<KycIdCardWidget> {
  File? imageFile;

  void _showPicker(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext bc) {
        return SafeArea(
          child: Wrap(
            children: <Widget>[
              ListTile(
                leading: const Icon(Icons.photo_camera),
                title: const Text('拍照'),
                onTap: () {
                  pickImageCamera().then((file) {
                    if (file != null) {
                      uploadImage([file!]).then((value) {
                        value.ifSuccess((data) {
                          widget.onImage?.call(data?.src ?? "");
                        });
                        value.ifFailure((e) {});
                      });
                      setState(() {
                        imageFile = file;
                      });
                    }
                  });
                  // _pickImage(ImageSource.camera);
                  Navigator.of(context).pop();
                },
              ),
              ListTile(
                leading: const Icon(Icons.photo_library),
                title: const Text('从相册选择'),
                onTap: () {
                  // _pickImage(ImageSource.gallery);
                  pickImage().then((file) {
                    if (file != null) {
                      uploadImage([file!]).then((value) {
                        value.ifSuccess((data) {
                          widget.onImage?.call(data?.src ?? "");
                        });
                        value.ifFailure((e) {});
                      });
                      setState(() {
                        imageFile = file;
                      });
                    }
                  });
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 310.h,
      decoration: BoxDecoration(
        color: AppTheme().roundContainerColor,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: EdgeInsets.symmetric(vertical: 32.h, horizontal: 30.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
            child: imageFile == null
                ? Image.asset(
                    widget.imagePath, // 替换成实际的图片路径
                    fit: BoxFit.cover,
                  )
                : Image.file(
                    imageFile!,
                    fit: BoxFit.cover,
                  ),
          ),
          const SizedBox(width: 16),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  widget.label,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 32.sp,
                      height: 1.2,
                      fontWeight: FontWeight.w500),
                ),
                Spacer(),
                ElevatedButton(
                  onPressed: () {
                    // 这里处理上传的逻辑
                    _showPicker(context);
                  },
                  style: ElevatedButton.styleFrom(
                    foregroundColor: const Color(0xFF3ABDFE),
                    backgroundColor: Colors.transparent,
                    side: const BorderSide(color: Color(0xFF3ABDFE)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  child: Text(
                    '上传',
                    style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 28.sp,
                        height: 1.2),
                  ),
                ),
                SizedBox(
                  height: 30.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
