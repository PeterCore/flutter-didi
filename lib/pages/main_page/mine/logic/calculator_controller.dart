import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dk_utils/dk_lib.dart';
import 'dart:math';

class CalculatorState {
  final String investmentAmount;
  final String investmentMethod;
  final String interestRate;
  final String duration;
  final String cycle;
  final double totalPrincipalAndInterest;
  final double totalInterest;
  final List<Map<String, dynamic>> paymentSchedule;

  CalculatorState({
    this.investmentAmount = '',
    this.investmentMethod = '',
    this.interestRate = '',
    this.duration = '',
    this.cycle = '',
    this.totalPrincipalAndInterest = 0,
    this.totalInterest = 0,
    this.paymentSchedule = const [],
  });

  CalculatorState copyWith({
    String? investmentAmount,
    String? investmentMethod,
    String? interestRate,
    String? duration,
    String? cycle,
    double? totalPrincipalAndInterest,
    double? totalInterest,
    List<Map<String, dynamic>>? paymentSchedule,
  }) {
    return CalculatorState(
      investmentAmount: investmentAmount ?? this.investmentAmount,
      investmentMethod: investmentMethod ?? this.investmentMethod,
      interestRate: interestRate ?? this.interestRate,
      duration: duration ?? this.duration,
      cycle: cycle ?? this.cycle,
      totalPrincipalAndInterest: totalPrincipalAndInterest ?? this.totalPrincipalAndInterest,
      totalInterest: totalInterest ?? this.totalInterest,
      paymentSchedule: paymentSchedule ?? this.paymentSchedule,
    );
  }
}

class CalculatorController extends StateNotifier<CalculatorState> {
  CalculatorController() : super(CalculatorState());

  void updateInvestmentAmount(String amount) {
    state = state.copyWith(investmentAmount: amount);
  }

  void updateInvestmentMethod(String method) {
    state = state.copyWith(investmentMethod: method);
  }

  void updateInterestRate(String rate) {
    state = state.copyWith(interestRate: rate);
  }

  void updateDuration(String duration) {
    state = state.copyWith(duration: duration);
  }

  void updateCycle(String cycle) {
    state = state.copyWith(cycle: cycle);
  }

  bool validateInputs() {
    if (state.investmentAmount.isEmpty) {
      EasyLoading.showInfo("请输入投资金额");
      return false;
    }
    if (state.investmentMethod.isEmpty) {
      EasyLoading.showInfo("请选择投资方式");
      return false;
    }
    if (state.interestRate.isEmpty) {
      EasyLoading.showInfo("请输入利率");
      return false;
    }
    if (state.duration.isEmpty) {
      EasyLoading.showInfo("请输入时间");
      return false;
    }
    if (state.investmentMethod == '2' && state.cycle.isEmpty) {
      EasyLoading.showInfo("请输入周期");
      return false;
    }
    return true;
  }

  void calculateProfit() {
    if (!validateInputs()) return;
    
    double amount = double.tryParse(state.investmentAmount) ?? 0;
    double rate = double.tryParse(state.interestRate) ?? 0;
    int days = int.tryParse(state.duration) ?? 0;
    int methodIndex = int.tryParse(state.investmentMethod) ?? 0;
    int cycle = int.tryParse(state.cycle) ?? 0;

    double totalInterest = 0;
    List<Map<String, dynamic>> schedule = [];
    DateTime startDate = DateTime.now();

    switch (methodIndex) {
      case 0: // 按天付收益，到期还本
        totalInterest = (rate * amount / 100) * days;
        for (int i = 1; i <= days; i++) {
          DateTime currentDate = startDate.add(Duration(days: i));
          double dailyInterest = (rate * amount / 100);
          schedule.add({
            'date': _formatDate(currentDate),
            'amount': i == days ? _truncateDecimal(dailyInterest + amount, 2) : _truncateDecimal(dailyInterest, 2),
            'principal': i == days ? amount.toStringAsFixed(2) : '0.00',
            'interest': _truncateDecimal(dailyInterest, 2),
            'balance': i == days ? '0.00' : amount.toStringAsFixed(2),
          });
        }
        break;

      case 1: // 按天付收益，等额本息返还
      case 5: // 按天付收益，到期返本百分比
        totalInterest = (rate * amount / 100) * days;
        double dailyPayment = (totalInterest + amount) / days;
        double remainingBalance = amount;
        for (int i = 1; i <= days; i++) {
          DateTime currentDate = startDate.add(Duration(days: i));
          double principalPart = amount / days;
          double interestPart = dailyPayment - principalPart;
          remainingBalance -= principalPart;
          schedule.add({
            'date': _formatDate(currentDate),
            'amount': _truncateDecimal(dailyPayment, 2),
            'principal': _truncateDecimal(principalPart, 2),
            'interest': _truncateDecimal(interestPart, 2),
            'balance': _truncateDecimal(remainingBalance, 2),
          });
        }
        break;

      case 2: // 按周期付收益，到期返本
        for (int i = 1; i <= cycle; i++) {
          DateTime currentDate = startDate.add(Duration(days: i * days));
          double cycleInterest = (rate * amount / 100) * days;
          schedule.add({
            'date': _formatDate(currentDate),
            'amount': i == cycle ? _truncateDecimal(cycleInterest + amount, 2) : _truncateDecimal(cycleInterest, 2),
            'principal': i == cycle ? amount.toStringAsFixed(2) : '0.00',
            'interest': _truncateDecimal(cycleInterest, 2),
            'balance': i == cycle ? '0.00' : amount.toStringAsFixed(2),
          });
        }
        totalInterest = (rate * amount / 100) * days * cycle;
        break;

      case 3: // 每日复利，保本保息
        double currentBalance = amount;
        for (int i = 1; i <= days; i++) {
          DateTime currentDate = startDate.add(Duration(days: i));
          double dailyInterest = currentBalance * (rate / 100);
          schedule.add({
            'date': _formatDate(currentDate),
            'amount': i == days ? _truncateDecimal(currentBalance, 2) : _truncateDecimal(dailyInterest, 2),
            'principal': i == days ? currentBalance.toStringAsFixed(2) : '0.00',
            'interest': _truncateDecimal(dailyInterest, 2),
            'balance': i== days ? 0 : _truncateDecimal(currentBalance, 2),
          });
          currentBalance += dailyInterest;
        }
        totalInterest = currentBalance - amount;
        break;

      case 4: // 工作日付收益，到期返本
        int workdays = 0;
        for (int i = 1; i <= days; i++) {
          DateTime currentDate = startDate.add(Duration(days: i));
          if (!_isHoliday(currentDate)) {
            workdays++;
            double dailyInterest = (rate * amount / 100);
            schedule.add({
              'date': _formatDate(currentDate),
              'amount': i == days ? _truncateDecimal(dailyInterest + amount, 2) : _truncateDecimal(dailyInterest, 2),
              'principal': i == days ? amount.toStringAsFixed(2) : '0.00',
              'interest': _truncateDecimal(dailyInterest, 2),
              'balance': i == days ? '0.00' : amount.toStringAsFixed(2),
            });
          }
        }
        totalInterest = (rate * amount / 100) * workdays;
        break;
    }

    state = state.copyWith(
      totalPrincipalAndInterest: _truncateDecimal(amount + totalInterest, 2),
      paymentSchedule: schedule,
      totalInterest: totalInterest
    );
  }

  String _formatDate(DateTime date) {
    return '${date.year}-${date.month.toString().padLeft(2, '0')}-${date.day.toString().padLeft(2, '0')}';
  }

  bool _isHoliday(DateTime date) {
    return date.weekday == DateTime.saturday || date.weekday == DateTime.sunday;
  }

  double _truncateDecimal(double value, int places) {
    double mod = pow(10.0, places) as double;
    return (value * mod).round() / mod;
  }
}

final calculatorProvider = StateNotifierProvider.autoDispose<CalculatorController, CalculatorState>((ref) {
  return CalculatorController();
});
