import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActionSheet {
  static Future<void> show({
    required BuildContext context,
    required List<dynamic> options,
    String? title,
    required ValueChanged<dynamic> onSelected,
  }) {
    return showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
      ),
      isDismissible: false, // 点击空白处不关闭
      enableDrag: false, // 禁止上下拖动
      builder: (BuildContext context) {
        return Container(
          padding: EdgeInsets.all(16.w),
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  if (title != null)
                    Center(
                      child: Text(
                        title,
                        style: TextStyle(
                          color: const Color(0xFF15141C),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  Positioned(
                    right: 0,
                    top: 0,
                    bottom: 0,
                    child: IconButton(
                      icon: const Icon(Icons.close, color: Colors.grey),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    ),
                  )
                ],
              ),
              SizedBox(height: 16.h),
              Flexible(
                child: ListView.separated(
                  shrinkWrap: true,
                  itemCount: options.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      contentPadding: const EdgeInsets.symmetric(horizontal: 0),
                      title: Text(options[index]['name'] ?? '',
                          style: TextStyle(
                            color: const Color(0xFF15141C),
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w400,
                          )),
                      onTap: () {
                        Navigator.of(context).pop();
                        onSelected(options[index]);
                      },
                      trailing: const Icon(
                        Icons.arrow_forward_ios,
                        color: Color(0xFFBCBCBC),
                        size: 14,
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const Divider(
                      color: Color(0xFFE6EBEA),
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
