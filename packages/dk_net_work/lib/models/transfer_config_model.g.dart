// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transfer_config_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransferConfigModelImpl _$$TransferConfigModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TransferConfigModelImpl(
      status: (json['status'] as num?)?.toInt(),
      msg: json['msg'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TransferConfigModelImplToJson(
        _$TransferConfigModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      txmoney: json['txmoney'] as String?,
      amount: json['amount'] as String?,
      invicode: json['invicode'] as String?,
      inMethod: (json['in_method'] as List<dynamic>?)
          ?.map((e) => InMethod.fromJson(e as Map<String, dynamic>))
          .toList(),
      outMethod: (json['out_method'] as List<dynamic>?)
          ?.map((e) => OutMethod.fromJson(e as Map<String, dynamic>))
          .toList(),
      zhuantixianyue: (json['zhuantixianyue'] as num?)?.toInt(),
      zhuantouzi: (json['zhuantouzi'] as num?)?.toInt(),
      tixianzhanghu: (json['tixianzhanghu'] as num?)?.toInt(),
      tip: json['tip'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'txmoney': instance.txmoney,
      'amount': instance.amount,
      'invicode': instance.invicode,
      'in_method': instance.inMethod,
      'out_method': instance.outMethod,
      'zhuantixianyue': instance.zhuantixianyue,
      'zhuantouzi': instance.zhuantouzi,
      'tixianzhanghu': instance.tixianzhanghu,
      'tip': instance.tip,
    };

_$InMethodImpl _$$InMethodImplFromJson(Map<String, dynamic> json) =>
    _$InMethodImpl(
      title: json['title'] as String?,
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$InMethodImplToJson(_$InMethodImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'id': instance.id,
    };

_$OutMethodImpl _$$OutMethodImplFromJson(Map<String, dynamic> json) =>
    _$OutMethodImpl(
      title: json['title'] as String?,
      amount: json['amount'] as String?,
      id: (json['id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$OutMethodImplToJson(_$OutMethodImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'amount': instance.amount,
      'id': instance.id,
    };
