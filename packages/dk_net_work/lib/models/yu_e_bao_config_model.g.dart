// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'yu_e_bao_config_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$YueBaoConfigModelImpl _$$YueBaoConfigModelImplFromJson(
        Map<String, dynamic> json) =>
    _$YueBaoConfigModelImpl(
      status: (json['status'] as num?)?.toInt(),
      data: json['data'] == null
          ? null
          : DataConfig.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$YueBaoConfigModelImplToJson(
        _$YueBaoConfigModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
    };

_$DataConfigImpl _$$DataConfigImplFromJson(Map<String, dynamic> json) =>
    _$DataConfigImpl(
      zongJinE: json['zong_jin_e'] as String?,
      fanlJinE: json['fanl_jin_e'] as String?,
      ruleStr: json['rule_str'] as String?,
      minduodeli: json['minduodeli'] as String?,
      txmoney: json['txmoney'] as String?,
      ratduodeli: json['ratduodeli'] as String?,
      wanduodeli: (json['wanduodeli'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$DataConfigImplToJson(_$DataConfigImpl instance) =>
    <String, dynamic>{
      'zong_jin_e': instance.zongJinE,
      'fanl_jin_e': instance.fanlJinE,
      'rule_str': instance.ruleStr,
      'minduodeli': instance.minduodeli,
      'txmoney': instance.txmoney,
      'ratduodeli': instance.ratduodeli,
      'wanduodeli': instance.wanduodeli,
    };
