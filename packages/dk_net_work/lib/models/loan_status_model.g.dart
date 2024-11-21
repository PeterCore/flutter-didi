// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan_status_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoanStatusModelImpl _$$LoanStatusModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoanStatusModelImpl(
      status: (json['status'] as num?)?.toInt(),
      withdrawalmin: json['withdrawalmin'] as String?,
      money: json['money'] as String?,
      isdaikuan: (json['isdaikuan'] as num?)?.toInt(),
      daikuancontent: json['daikuancontent'] as String?,
      jiemoney: json['jiemoney'] as String?,
      huanmoney: json['huanmoney'] as String?,
      yidaimoney: json['yidaimoney'] as String?,
      txmoney: json['txmoney'] as String?,
      amount: json['amount'] as String?,
      earlyRepayContent: json['huankuan_tiqian_content'] as String?,
      esignature: (json['esignature'] as num?)?.toInt(),
      huankuancontent: json['huankuancontent'] as String?,
    );

Map<String, dynamic> _$$LoanStatusModelImplToJson(
        _$LoanStatusModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'withdrawalmin': instance.withdrawalmin,
      'money': instance.money,
      'isdaikuan': instance.isdaikuan,
      'daikuancontent': instance.daikuancontent,
      'jiemoney': instance.jiemoney,
      'huanmoney': instance.huanmoney,
      'yidaimoney': instance.yidaimoney,
      'txmoney': instance.txmoney,
      'amount': instance.amount,
      'huankuan_tiqian_content': instance.earlyRepayContent,
      'esignature': instance.esignature,
      'huankuancontent': instance.huankuancontent,
    };
