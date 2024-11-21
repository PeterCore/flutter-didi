import 'package:dk_utils/components/app_local_image.dart';
import 'package:dk_utils/components/file_bytes/file_bytes.dart'
    if (dart.library.io) 'package:dk_utils/components/file_bytes/file_bytes_mobile.dart'
    if (dart.library.html) 'package:dk_utils/components/file_bytes/file_bytes_web.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../assets_tool/ui_assets.dart';
import '../common/upload_image_sheet.dart';

class UploadGridWidget extends StatefulWidget {
  const UploadGridWidget({super.key, required this.controller});
  final UploadImageController controller;

  @override
  State<UploadGridWidget> createState() => _UploadGridWidgetState();
}

class _UploadGridWidgetState extends State<UploadGridWidget> {
  // Future<Uint8List> fileToUint8List(File file) async {
  //   return await file.readAsBytes();
  // }

  @override
  Widget build(BuildContext context) {
    return widget.controller?.fileBytes == null
        ? AppLocalImage(
            path: UIAssets.source!.icupbg,
            width: 104.w,
            height: 104.w,
            onTap: () {
              PickerImageSheet.showPicker(context, (file) async {
                widget.controller?.fileBytes =
                    await FileBytesImpl().convertFileToBytes(file: file);
                int i = 0;
                setState(() {
                  widget.controller.file = file;
                });
              });
            },
          )
        : GestureDetector(
            onTap: () {
              PickerImageSheet.showPicker(context, (file) async {
                widget.controller?.fileBytes =
                    await FileBytesImpl().convertFileToBytes(file: file);
                setState(() {
                  widget.controller.file = file;
                });
              });
            },
            child: Image.memory(
              widget.controller.fileBytes!,
              width: 104.w,
              height: 104.w,
            ),
          );
  }
}
