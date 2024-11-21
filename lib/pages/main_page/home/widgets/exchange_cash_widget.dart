import 'package:churn/components/pay_psw_sheet.dart';
import 'package:churn/pages/main_page/market/logic/my_point_controller.dart';
import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_utils/components/gradient_button.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MinValueInputFormatter extends TextInputFormatter {
  final int minValue;

  MinValueInputFormatter({required this.minValue});

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    // 正则表达式：匹配正整数
    final RegExp regex = RegExp(r'^\d+$');

    if (newValue.text.isEmpty) {
      return newValue;
    }

    // 如果输入内容不匹配正整数，保持旧值
    if (!regex.hasMatch(newValue.text)) {
      return oldValue;
    }

    // 将输入值转换为整数
    final int? intValue = int.tryParse(newValue.text);

    // 如果输入值小于最小值，保持旧值
    if (intValue != null && intValue < minValue) {
      return oldValue;
    }

    // 否则，接受新值
    return newValue;
  }
}

class ExchangeCashWidget extends StatefulWidget {
  const ExchangeCashWidget({super.key, required this.point});
  final int point;

  @override
  State<ExchangeCashWidget> createState() => _ExchangeCashWidgetState();
}

class _ExchangeCashWidgetState extends State<ExchangeCashWidget> {
  final TextEditingController _controller = TextEditingController();
  MyPointController myPointController = MyPointController();
  @override
  void initState() {
    // TODO: implement initState

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        //ref.read(myPointProvider).getMyPoint();
        myPointController.getCurrentPoint();
        myPointController.addListener(_updatePoint);
      }
    });

    super.initState();
  }

  void _updatePoint() {
    if (mounted) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    myPointController.removeListener(_updatePoint);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final myPoint = myPointController
            .myPointViewModel.minePointResultModel?.data?.integral ??
        "0";
    final minExchange = myPointController
            .myPointViewModel.minePointResultModel?.data?.minExchange ??
        "0";
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // 积分兑换输入框部分
          RoundContainer(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 积分兑换标题
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '积分兑换',
                      style: TextStyle(
                        color: AppTheme().wordPrimaryColor,
                        fontSize: 18.sp,
                        height: 1.4,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '可用积分  $myPoint',
                      style: TextStyle(
                        color: AppTheme().themeBackGroundColor,
                        fontSize: 15.sp,
                        height: 1.4,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                // 输入框
                Container(
                  decoration: BoxDecoration(
                    color: AppTheme().inputBackgroundColor,
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: TextField(
                    controller: _controller,
                    cursorColor: AppTheme().wordPrimaryColor,
                    keyboardType: TextInputType.number,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly,
                    ],
                    style: TextStyle(color: AppTheme().wordPrimaryColor),
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: '请输入积分数量',
                      hintStyle: TextStyle(color: AppTheme().wordSecondColor),
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                // 100积分=1USDT 说明
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '100积分 = 1 USDT',
                      style: TextStyle(
                        color: AppTheme().wordSecondColor,
                        fontSize: 12.sp,
                        height: 1.2,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      '最低兑换数量 $minExchange 积分',
                      style: TextStyle(
                        color: AppTheme().themeBackGroundColor,
                        fontSize: 12.sp,
                        height: 1.2,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),
          // 立即兑换按钮
          GradientButton(
            text: "立即兑换",
            onPressed: (index) {
              if (_controller.text.isEmpty) {
                EasyLoading.showError("请输入积分");
                return;
              } else if (_controller.text.isNotEmpty) {
                final minPoint = int.parse(minExchange);
                final inputPoint = int.parse(_controller.text);
                if (minPoint > inputPoint) {
                  EasyLoading.showError("不能低于兑换最低数量");
                  return;
                }
                FocusScope.of(context).requestFocus(FocusNode());

                showCustomBottomPayPassWordSheet(context, "支付密码", (p) {},
                    onConfirm: (pwdPay) {
                  EasyLoading.show();
                  pointExchange(point: inputPoint, pwdPay: pwdPay)
                      .then((value) {
                    EasyLoading.dismiss();
                    value.ifSuccess((value) {
                      EasyLoading.showSuccess("兑换成功");
                      // myPointP.getMyPoint();
                      myPointController.getCurrentPoint();
                      context.pop();
                    });
                    value.ifFailure((e) {
                      EasyLoading.showError(e.message);
                    });
                  });
                });
              }
            },
          ),
        ],
      ),
    );
  }
}

// class ExchangeCashWidget extends StatefulWidget {
//   const ExchangeCashWidget({super.key, required this.point});
//   final int point;
//   @override
//   State<ExchangeCashWidget> createState() => _ExchangeCashWidgetState();
// }
//
// class _ExchangeCashWidgetState extends State<ExchangeCashWidget> {
//   final TextEditingController _controller = TextEditingController();
//
//   @override
//   void dispose() {
//     // TODO: implement dispose
//     _controller.dispose();
//
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.start,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           // 积分兑换输入框部分
//           Container(
//             padding: EdgeInsets.all(16),
//             decoration: BoxDecoration(
//               color: Colors.grey[900],
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 // 积分兑换标题
//                 Row(
//                   children: [
//                     const Text(
//                       '积分兑换',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 18,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ],
//                 ),
//                 const SizedBox(height: 16),
//                 // 输入框
//                 Container(
//                   decoration: BoxDecoration(
//                     color: Colors.black,
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   padding: const EdgeInsets.symmetric(horizontal: 12),
//                   child: TextField(
//                     controller: _controller,
//                     cursorColor: Colors.white,
//                     keyboardType: TextInputType.number,
//                     inputFormatters: <TextInputFormatter>[
//                       FilteringTextInputFormatter.digitsOnly, // 只允许输入正整数
//                     ],
//                     style: const TextStyle(color: Colors.white),
//                     decoration: const InputDecoration(
//                       border: InputBorder.none,
//                       hintText: '请输入积分数量',
//                       hintStyle: TextStyle(color: Colors.grey),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(height: 16),
//                 // 100积分=1USDT 说明
//                 const Text(
//                   '100积分=1USDT',
//                   style: TextStyle(color: Colors.white70, fontSize: 16),
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(height: 32),
//           // 立即兑换按钮
//           GradientButton(
//             text: "立即兑换",
//             onPressed: (index) {},
//           ),
//         ],
//       ),
//     );
//   }
// }
