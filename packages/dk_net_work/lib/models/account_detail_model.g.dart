// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'account_detail_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AccountDetailModelImpl _$$AccountDetailModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AccountDetailModelImpl(
      status: (json['status'] as num?)?.toInt(),
      data: json['data'] == null
          ? null
          : AccountDetailData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AccountDetailModelImplToJson(
        _$AccountDetailModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

_$AccountDetailDataImpl _$$AccountDetailDataImplFromJson(
        Map<String, dynamic> json) =>
    _$AccountDetailDataImpl(
      amount: json['amount'] as String?,
      txmoney: json['txmoney'] as String?,
      dmoneys: json['Dmoneys'] as String?,
      ymoneys: json['Ymoneys'] as String?,
      buyjsamounts: json['buyjsamounts'] as String?,
      withdrawals: json['withdrawals'] as String?,
      mark: json['mark'] as String?,
    );

Map<String, dynamic> _$$AccountDetailDataImplToJson(
        _$AccountDetailDataImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'txmoney': instance.txmoney,
      'Dmoneys': instance.dmoneys,
      'Ymoneys': instance.ymoneys,
      'buyjsamounts': instance.buyjsamounts,
      'withdrawals': instance.withdrawals,
      'mark': instance.mark,
    };
