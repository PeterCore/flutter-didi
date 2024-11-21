// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan_contract_content_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoanContractContentModelImpl _$$LoanContractContentModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoanContractContentModelImpl(
      status: (json['status'] as num?)?.toInt(),
      msg: json['msg'] as String?,
      data: json['data'] == null
          ? null
          : LoanContractContentData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoanContractContentModelImplToJson(
        _$LoanContractContentModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'data': instance.data,
    };

_$LoanContractContentDataImpl _$$LoanContractContentDataImplFromJson(
        Map<String, dynamic> json) =>
    _$LoanContractContentDataImpl(
      content: json['content'] as String?,
      companyLong: json['CompanyLong'] as String?,
      xm: json['xm'] as String?,
      sfz: json['sfz'] as String?,
      number: json['number'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      bianhao: json['bianhao'] as String?,
      signImg: json['sign_img'],
      hetong: json['hetong'] as String?,
    );

Map<String, dynamic> _$$LoanContractContentDataImplToJson(
        _$LoanContractContentDataImpl instance) =>
    <String, dynamic>{
      'content': instance.content,
      'CompanyLong': instance.companyLong,
      'xm': instance.xm,
      'sfz': instance.sfz,
      'number': instance.number,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'bianhao': instance.bianhao,
      'sign_img': instance.signImg,
      'hetong': instance.hetong,
    };
