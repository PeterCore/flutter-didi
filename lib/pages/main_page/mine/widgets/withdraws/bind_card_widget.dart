import 'package:dk_utils/components/app_local_image.dart';
import 'package:dk_utils/components/round_container.dart';
import 'package:dk_utils/constants/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PaymentCardContainer extends StatelessWidget {
  const PaymentCardContainer({super.key, required this.cardItem});
  final PaymentCard? cardItem;
  @override
  Widget build(BuildContext context) {
    return cardItem?.isBind == true
        ? Visibility(
            visible: cardItem?.isVisible ?? false,
            child: Padding(
              padding: EdgeInsets.only(top: 12.h),
              child: PaymentWidget(
                imagePath: cardItem?.imagePath ?? "",
                title: cardItem?.cardName ?? "",
                text: cardItem?.cardNo ?? "",
              ),
            ),
          )
        : Visibility(
            visible: cardItem?.isVisible ?? false,
            child: Padding(
              padding: EdgeInsets.only(top: 12.h),
              child: GestureDetector(
                onTap: () {
                  cardItem?.onClick
                      ?.call(cardItem?.type ?? PaymentCardType.bank);
                },
                child: BindCardWidget(
                  imagePath: cardItem?.imagePath ?? "",
                  text: cardItem?.mark ?? "",
                ),
              ),
            ),
          );
  }
}

enum PaymentCardType {
  bank,
  zhiFuBao,
  dexWallet,
}

class PaymentCard {
  PaymentCardType type;
  bool isBind;
  String cardNo;
  String cardName;
  String imagePath;
  String mark;
  bool? isVisible;
  Function(PaymentCardType type)? onClick;
  PaymentCard(
      {required this.isBind,
      this.onClick,
      this.isVisible = false,
      required this.mark,
      required this.type,
      required this.cardNo,
      required this.cardName,
      required this.imagePath});
}

class PaymentWidget extends StatelessWidget {
  const PaymentWidget(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.text});
  final String imagePath;
  final String title;
  final String text;
  @override
  Widget build(BuildContext context) {
    return RoundContainer(
      vertical: 25.h,
      backgroundColor: Color(0xFF282440),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              AppLocalImage(
                path: imagePath,
                width: 20.w,
                height: 20.h,
              ),
              SizedBox(
                width: 8.w,
              ),
              Text(
                title,
                style: TextStyle(
                    fontSize: 13.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    height: 1.2),
              ),
            ],
          ),
          SizedBox(
            height: 40.h,
          ),
          Text(
            text,
            style: TextStyle(
                fontSize: 24.sp,
                color: Colors.white,
                fontWeight: FontWeight.w700,
                height: 1.2),
          ),
        ],
      ),
    );
  }
}

class BindCardWidget extends StatelessWidget {
  const BindCardWidget({super.key, this.imagePath, this.text});
  final String? imagePath;
  final String? text;
  @override
  Widget build(BuildContext context) {
    return RoundDashContainer(
        vertical: 50.h,
        color: AppTheme().themeBackGroundColor,
        backgroundColor: AppTheme().roundContainerColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppLocalImage(
              path: imagePath ?? "",
              width: 20.w,
              height: 20.h,
            ),
            SizedBox(
              width: 8.w,
            ),
            Text(
              text ?? "",
              style: TextStyle(
                  fontSize: 18.sp,
                  color: AppTheme().wordPrimaryColor,
                  fontWeight: FontWeight.w400,
                  height: 1),
            ),
          ],
        ));
  }
}
