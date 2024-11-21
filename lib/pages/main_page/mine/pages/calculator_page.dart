import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../mine/logic/calculator_controller.dart';
import '../../../../assets_tool/ui_assets.dart';
import '../../../../components/black_styles_container.dart';
import 'package:dk_utils/constants/app_theme.dart';
import 'package:flutter/services.dart';

class CalculatorPage extends ConsumerWidget {
  const CalculatorPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(calculatorProvider);
    final controller = ref.read(calculatorProvider.notifier);

    return BlackStylesContainer(
      title: "计算器",
      backgroundPath: UIAssets.source!.bg2,
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildInvestmentSection(state, controller, context),
            SizedBox(height: 16.h),
            _buildResultSection(state, controller),
            SizedBox(height: 12.h),
            Center(
              child: Text(
                '计算结果仅供参考！投资收益以真实数据为准',
                style: TextStyle(
                    color: AppTheme().colorAlter,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInvestmentSection(CalculatorState state,
      CalculatorController controller, BuildContext context) {
    const List<String?> pickers = [
      "按天付收益，到期还本", //0
      "按天付收益，等额本息返还", //1
      "按周期付收益，到期返本", //2
      "每日复利，保本保息", //3
      "工作日付收益，到期返本", //4
      // "按天付收益，到期返本百分比", //5
      "按周期付收益，等额本息返还",
    ];
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildInputField('投资金额', '请输入投资金额', Icons.attach_money,
              controller.updateInvestmentAmount, maxValue: 999999),
          SizedBox(height: 12.h),
          _buildSelectField(
              '投资方式',
              state.investmentMethod.isEmpty
                  ? '请选择投资方式'
                  : pickers[int.parse(state.investmentMethod)] ?? '', () {
            PickerBottomPicker.pickerNormal(context, pickers: pickers,
                onSelected: (value) {
              final index = pickers.indexOf(value);
              controller.updateInvestmentMethod(index.toString());
            });
          }),
          SizedBox(height: 12.h),
          _buildInputField('', '请输入利率', null, controller.updateInterestRate,
              suffixText: '%', prefixText: '利率', maxValue: 30),
          SizedBox(height: 12.h),
          _buildInputField('', '请输入时间', null, controller.updateDuration,
              suffixText: '天', prefixText: '时间', maxValue: 999),
          SizedBox(height: 12.h),
          if (state.investmentMethod == '2')
            _buildInputField('', '请输入周期', null, controller.updateCycle,
                suffixText: '', prefixText: '周期'),
          SizedBox(height: 24.h),
          _buildCalculateButton(controller),
        ],
      ),
    );
  }

  Widget _buildResultSection(
      CalculatorState state, CalculatorController controller) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('总计本息',
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18.sp,
                      color: const Color(0xFF15151D))),
              Text(
                state.totalPrincipalAndInterest.toStringAsFixed(2),
                style: TextStyle(
                    color: AppTheme().colorAlter,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          if (state.paymentSchedule.isNotEmpty) ...[
            const SizedBox(height: 16),
            _buildPaymentScheduleTable(state),
          ]
        ],
      ),
    );
  }

  Widget _buildInputField(
      String label, String hint, IconData? icon, Function(String) onChanged,
      {String? prefixText, String? suffixText, double? maxValue}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (label.isNotEmpty) ...[
          Text(label,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 18.sp)),
          SizedBox(height: 12.h),
        ],
        TextField(
          style: TextStyle(fontSize: 16.sp),
          decoration: InputDecoration(
            contentPadding:
                EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w),
            filled: true,
            fillColor: const Color(0xFFF1F3F5),
            hintText: hint,
            hintStyle:
                TextStyle(color: const Color(0xFFBCBCBC), fontSize: 14.sp),
            prefixIcon: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w),
                child: icon != null
                    ? Icon(icon, color: const Color(0xFF5C5D69))
                    : Text(prefixText ?? '',
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: const Color(0xFF15151D),
                            fontWeight: FontWeight.w500))),
            suffixIcon: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 16.w),
                child: Text(suffixText ?? '',
                    style: TextStyle(
                        fontSize: 16.sp,
                        color: const Color(0xFF15151D),
                        fontWeight: FontWeight.w500))),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide.none,
            ),
          ),
          keyboardType: const TextInputType.numberWithOptions(decimal: true),
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d*$')),
            TextInputFormatter.withFunction((oldValue, newValue) {
              if (newValue.text.isEmpty) {
                return newValue;
              }
              double? value = double.tryParse(newValue.text);
              if (value != null && maxValue != null && value > maxValue) {
                return TextEditingValue(
                  text: maxValue.toString(),
                  selection: TextSelection.collapsed(offset: maxValue.toString().length),
                );
              }
              return newValue;
            }),
          ],
          onChanged: onChanged,
        ),
      ],
    );
  }

  Widget _buildSelectField(String label, String hint, VoidCallback onTap) {
    return TextField(
      readOnly: true,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 23.h, horizontal: 16.w),
        filled: true,
        fillColor: const Color(0xFFF1F3F5),
        hintText: hint,
        hintStyle: TextStyle(color: const Color(0xFF15151D), fontSize: 14.sp),
        suffixIcon: Icon(Icons.arrow_forward_ios,
            color: const Color(0xFF5C5D69), size: 16.sp),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide.none,
        ),
      ),
      onTap: onTap,
    );
  }

  Widget _buildCalculateButton(CalculatorController controller) {
    return SizedBox(
      width: double.infinity,
      height: 50.h,
      child: ElevatedButton(
        onPressed: controller.calculateProfit,
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),
        child: Text('计算收益',
            style: TextStyle(fontSize: 16.sp, color: Colors.white)),
      ),
    );
  }

  Widget _buildPaymentScheduleTable(CalculatorState state) {
    return Table(
      columnWidths: const {
        0: FlexColumnWidth(2),
        1: FlexColumnWidth(2),
        2: FlexColumnWidth(2),
        3: FlexColumnWidth(2),
      },
      border: TableBorder(
        horizontalInside: BorderSide(color: Colors.grey[300]!),
      ),
      children: [
        TableRow(
          decoration: const BoxDecoration(),
          children: ['收款日期', '收回本金', '收回利息', '剩余本金']
              .map((e) => Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Center(
                        child: Text(e,
                            style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 16.sp,
                                color: const Color(0xFF15151D)))),
                  ))
              .toList(),
        ),
        ...state.paymentSchedule.map(
          (payment) => TableRow(
            children: [
              payment['date'],
              payment['principal'],
              payment['interest'],
              payment['balance'],
            ]
                .map((e) => Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.h),
                      child: Center(child: Text(e.toString())),
                    ))
                .toList(),
          ),
        ),
        if (state.paymentSchedule.isNotEmpty)
          TableRow(
            children: [
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 16.h),
                  child: Center(
                      child: Text('总计',
                          style: TextStyle(
                              fontWeight: FontWeight.w400, fontSize: 14.sp)))),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.h),
                child: Center(
                    child: Text(
                  state.investmentAmount.toString(),
                  style:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 14.sp),
                )),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.h),
                child: Center(
                    child: Text(
                  state.totalInterest.toStringAsFixed(2),
                  style:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 14.sp),
                )),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16.h),
                child: Center(
                    child: Text(
                  '0',
                  style:
                      TextStyle(fontWeight: FontWeight.w400, fontSize: 14.sp),
                )),
              ),
            ],
          ),
      ],
    );
  }
}
