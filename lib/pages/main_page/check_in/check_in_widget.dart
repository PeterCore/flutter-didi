import 'package:churn/assets_tool/ui_assets.dart';
import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_net_work/models/check_in_result.dart';
import 'package:dk_utils/components/gradient_button.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

class CheckInWidget extends StatefulWidget {
  const CheckInWidget({super.key});

  @override
  State<CheckInWidget> createState() => _CheckInWidgetState();
}

class _CheckInWidgetState extends State<CheckInWidget> {
  CheckInResult? checkInResult;
  late DateTime today;
  late int totalDaysInMonth;
  List<int> signedDays = List.of([]);
  int maxSupplementarySignDays = 0;
  List<int> supplementaryDays = List.of([]);
  int supplementStartDay = 0;
  List<Reward> rewards = [];
  int openReSign = 1;

  void signIn({String dateTime = ''}) {
    EasyLoading.show();
    checkInSuccess(signAt: dateTime).then((value) {
      EasyLoading.dismiss();
      value.ifSuccess((data) {
        WmmDialog.showWMMDialog(context,
            title: "签到成功", content: data.msg ?? "", btnText: "我知道了");
        setState(() {
          if (mounted) {
            // signedDays.add(today.day);
            getCheckInResult();
          }
        });
      });
      value.ifFailure((e) {
        EasyLoading.showError(e.message);
      });
    });
  }

  void getCheckInResult() {
    fetchCheckInInfo().then((value) {
      EasyLoading.dismiss();
      value.ifSuccess((data) {
        if (mounted) {
          setState(() {
            checkInResult = data;
            signedDays = checkInResult?.msg ?? [];
            maxSupplementarySignDays = checkInResult?.resignTimes ?? 0;
            supplementStartDay = checkInResult?.resignFromDay ?? 0;
            rewards = checkInResult?.rewards ?? [];
            openReSign = checkInResult?.resignSwitch ?? 0;
            calculateSupplementaryDays();
          });
        }
      });
      value.ifFailure((e) {});
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getCheckInResult();
    });
    today = DateTime.now();
    totalDaysInMonth = getDaysInMonth(today.year, today.month);
    super.initState();
  }

  int getDaysInMonth(int year, int month) {
    return DateTime(year, month + 1, 0).day;
  }

  void calculateSupplementaryDays() {
    if (openReSign == 0) return;
    supplementaryDays.clear();
    int lastSignedDay = signedDays.isNotEmpty ? signedDays.last : 0;
    if (supplementStartDay >= lastSignedDay) {
      return;
    }
    for (int i = supplementStartDay; i <= lastSignedDay; i++) {
      bool isAlreadySigned = signedDays.contains(i);
      if (!isAlreadySigned) {
        supplementaryDays.add(i); // 添加补签日期
      }
    }
  }

  List<Widget> _buildRewardList() {
    List<Widget> list = [];
    for (Reward item in rewards) {
      list.add(_buildSignInItem("${item.days ?? 0}", "${item.reward ?? 0}"));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    if (checkInResult == null) {
      return const Center(
          child: CircularProgressIndicator(
        color: Colors.white,
      ));
    }
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(top: 16.h, left: 20.w, right: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '每日签到领奖励',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.sp,
                  height: 1.2,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 96.h,
              child: Stack(
                children: [
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: AspectRatio(
                      aspectRatio: 335 / 56,
                      child: AppLocalImage(
                        path: UIAssets.source!.icchtop,
                        height: 56.h,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    bottom: 0,
                    right: 16.w,
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: AppLocalImage(
                        path: UIAssets.source!.iccitop,
                        height: 90.h,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 12.h,
                    left: 20.w,
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: '已签到',
                          style: TextStyle(
                              color: AppTheme().wordPrimaryColor,
                              height: 1.4,
                              fontWeight: FontWeight.w500,
                              fontSize: 18.sp)),
                      TextSpan(
                          text: "${checkInResult?.days ?? 0}",
                          style: TextStyle(
                              color: AppTheme().themeBackGroundColor,
                              height: 1.4,
                              fontWeight: FontWeight.w500,
                              fontSize: 18.sp)),
                      TextSpan(
                          text: '天',
                          style: TextStyle(
                              color: AppTheme().wordPrimaryColor,
                              height: 1.4,
                              fontWeight: FontWeight.w500,
                              fontSize: 18.sp)),
                    ])),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white, // 设置背景颜色
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10.r), // 左下角圆角
                  bottomRight: Radius.circular(10.r), // 右下角圆角
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.w),
                child: Column(
                  children: [
                    _buildCalendar(),
                    SizedBox(
                      height: 14.h,
                    ),
                    GradientButton(
                        text: "立即签到",
                        onPressed: (index) {
                          String day = today.day.toString().padLeft(2, '0');
                          String month = today.month.toString().padLeft(2, '0');
                          String year = today.year.toString();
                          signIn(dateTime: "${year}-${month}-${day}");
                          // bool isSigned = signedDays.contains(today.day);
                          // if (!isSigned) {
                          //   String day = today.day.toString().padLeft(2, '0');
                          //   String month =
                          //       today.month.toString().padLeft(2, '0');
                          //   String year = today.year.toString();
                          //   signIn(dateTime: "$year-$month-$day");
                          // }

                          // bool isSigned = signedDays.contains(today.day);
                          // if (!isSigned) {
                          //   String day = today.day.toString().padLeft(2, '0');
                          //   String month =
                          //       today.month.toString().padLeft(2, '0');
                          //   String year = today.year.toString();
                          //   EasyLoading.show();
                          //   checkInSuccess(signAt: "${year}-${month}-${day}")
                          //       .then((value) {
                          //     EasyLoading.dismiss();
                          //     value.ifSuccess((data) {
                          //       WmmDialog.showWMMDialog(context,
                          //           title: "签到成功", content: data.msg ?? "");
                          //     });
                          //     value.ifFailure((e) {
                          //       EasyLoading.showError(e.message);
                          //     });
                          //   });
                          // }
                        }),
                    SizedBox(
                      height: 24.h,
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),
            RoundContainer(
              horizontal: 12.w,
              vertical: 16.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '连续签到',
                    style: TextStyle(
                        color: AppTheme().wordPrimaryColor,
                        fontSize: 16.sp,
                        height: 1.2,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(height: 10.h),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: _buildRewardList(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildCalendar() {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: totalDaysInMonth + _getFirstDayOffset(today.year, today.month),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 7, //
        mainAxisSpacing: 5.h,
        crossAxisSpacing: 5.w,
        childAspectRatio: 0.55,
      ),
      itemBuilder: (context, index) {
        int firstDayOffset = _getFirstDayOffset(today.year, today.month);

        if (index < firstDayOffset) {
          return const SizedBox.shrink();
        }

        int day = index + 1 - firstDayOffset;
        bool isSigned = signedDays.contains(day);
        bool isCurrentDay = day == today.day;
        bool canSupplement = supplementaryDays.contains(day);

        return GestureDetector(
            onTap: () {
              if (canSupplement) {
                String days = day.toString().padLeft(2, '0');
                String month = today.month.toString().padLeft(2, '0');
                String year = today.year.toString();
                signIn(dateTime: "$day");
              }
            },
            child:
                _buildCalendarCell(day, isSigned, isCurrentDay, canSupplement));
      },
    );
  }

  int _getFirstDayOffset(int year, int month) {
    DateTime firstDay = DateTime(year, month, 1);
    return firstDay.weekday % 7;
  }

  // 构建每个日历单元格
  Widget _buildCalendarCell(
      int day, bool isSigned, bool isCurrentDay, bool canSupplement) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.w),
      decoration: BoxDecoration(
        color: isSigned ? AppTheme().themeBackGroundColor : Colors.transparent,
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: Colors.transparent),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // 图标部分
          Flexible(
              flex: 2,
              child: AppLocalImage(
                path: UIAssets.source!.icrdl,
                width: 20.w,
                height: 20.w,
              )),
          SizedBox(height: 4.h),
          // 补签、打勾或日期显示
          Flexible(
            flex: 1,
            child: canSupplement
                ? Text(
                    '补签',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        height: 1),
                  )
                : isCurrentDay && isSigned
                    ? Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 18.w,
                      )
                    : Text(
                        day.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          height: 1,
                          fontSize: 14.sp, // 控制字体大小，避免布局溢出
                          color: isSigned
                              ? Colors.white
                              : AppTheme().wordPrimaryColor, // 字体颜色根据签到状态变化
                        ),
                      ),
          ),
        ],
      ),
    );
  }

  Widget _buildSignInItem(String daysText, String rewardText) {
    return Padding(
      padding: const EdgeInsets.only(right: 16), // 设置每个item之间的间距
      child: Column(
        children: [
          // 上方图标
          SizedBox(
            width: 40.w,
            height: 40.h,
            child: AppLocalImage(
              path: UIAssets.source!.icrdl,
              width: 24.w,
              height: 24.w,
            ),
          ),
          SizedBox(height: 10.h),
          // 签到天数和奖励
          Text(
            "连续$daysText天送",
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                height: 1.2,
                color: AppTheme().wordPrimaryColor),
          ),
          SizedBox(height: 4.h),
          Text(
            "$rewardText USDT",
            style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                height: 1.2,
                color: Colors.purple),
          ),
        ],
      ),
    );
  }
}
