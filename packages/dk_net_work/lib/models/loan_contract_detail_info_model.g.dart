// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan_contract_detail_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoanContractDetailInfoModelImpl _$$LoanContractDetailInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$LoanContractDetailInfoModelImpl(
      status: (json['status'] as num?)?.toInt(),
      msg: json['msg'] as String?,
      data: json['data'] == null
          ? null
          : LoanContractDetailData.fromJson(
              json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoanContractDetailInfoModelImplToJson(
        _$LoanContractDetailInfoModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'data': instance.data,
    };

_$LoanContractDetailDataImpl _$$LoanContractDetailDataImplFromJson(
        Map<String, dynamic> json) =>
    _$LoanContractDetailDataImpl(
      numberAmount: (json['number_amount'] as num?)?.toDouble(),
      id: (json['id'] as num?)?.toInt(),
      userid: (json['userid'] as num?)?.toInt(),
      bianhao: json['bianhao'] as String?,
      username: json['username'] as String?,
      number: json['number'] as String?,
      status: (json['status'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      mark: json['mark'] as String?,
      rate: (json['rate'] as num?)?.toInt(),
      signImg: json['sign_img'] as String?,
      companyLong: json['CompanyLong'] as String?,
      xm: json['xm'] as String?,
      sfz: json['sfz'] as String?,
      hetong: json['hetong'] as String?,
      content: json['content'] as String?,
    );

Map<String, dynamic> _$$LoanContractDetailDataImplToJson(
        _$LoanContractDetailDataImpl instance) =>
    <String, dynamic>{
      'number_amount': instance.numberAmount,
      'id': instance.id,
      'userid': instance.userid,
      'bianhao': instance.bianhao,
      'username': instance.username,
      'number': instance.number,
      'status': instance.status,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'mark': instance.mark,
      'rate': instance.rate,
      'sign_img': instance.signImg,
      'CompanyLong': instance.companyLong,
      'xm': instance.xm,
      'sfz': instance.sfz,
      'hetong': instance.hetong,
      'content': instance.content,
    };
