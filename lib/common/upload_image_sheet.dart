import 'dart:io';
import 'dart:typed_data';

import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:dk_utils/utils/pick_image.dart';
import 'package:flutter/material.dart';

class UploadImageController {
  File? file;
  Uint8List? fileBytes;
  final Function(String imageUrl)? onImageUrl;
  UploadImageController({this.file, this.onImageUrl});

  void uploadImageUint8List({Function(String imageUrl)? onImageUrl}) {
    if (fileBytes == null || fileBytes!.isEmpty) return;
    final String newId = const Uuid().v1();
    MultipartFile multipartFile = MultipartFile.fromBytes(
      fileBytes!,
      filename: '$newId.png',
      contentType: DioMediaType('image', 'png'),
    );
    EasyLoading.show();
    uploadUintListImage([multipartFile]).then((value) {
      EasyLoading.dismiss();
      value.ifSuccess((data) {
        onImageUrl?.call(data.src ?? "");
      });
      value.ifFailure((e) {
        EasyLoading.showError(e.message);
      });
    });
  }

  void uploadImageSource({Function(String imageUrl)? onImageUrl}) {
    uploadImage([file!]).then((value) {
      EasyLoading.dismiss();
      value.ifSuccess((data) {
        onImageUrl?.call(data.src ?? "");
      });
      value.ifFailure((e) {
        EasyLoading.showError(e.message);
      });
    });
  }

  void setFile({File? imageFile}) {
    file = imageFile;
  }
}

class PickerImageSheet {
  static void showPicker(
      BuildContext context, Function(File file)? onSelectImageFile) {
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
                      onSelectImageFile?.call(file);
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
                      onSelectImageFile?.call(file);
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
}
