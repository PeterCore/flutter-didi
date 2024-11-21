// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loan_contract_record_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoanContractRecordResultImpl _$$LoanContractRecordResultImplFromJson(
        Map<String, dynamic> json) =>
    _$LoanContractRecordResultImpl(
      status: (json['status'] as num?)?.toInt(),
      list: json['list'] == null
          ? null
          : LoanContractRecordList.fromJson(
              json['list'] as Map<String, dynamic>),
      pagesize: json['pagesize'] as String?,
      downloadSwitch: (json['download_switch'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$LoanContractRecordResultImplToJson(
        _$LoanContractRecordResultImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'list': instance.list,
      'pagesize': instance.pagesize,
      'download_switch': instance.downloadSwitch,
    };

_$LoanContractRecordListImpl _$$LoanContractRecordListImplFromJson(
        Map<String, dynamic> json) =>
    _$LoanContractRecordListImpl(
      currentPage: (json['current_page'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map(
              (e) => LoanContractRecordItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstPageUrl: json['first_page_url'] as String?,
      from: (json['from'] as num?)?.toInt(),
      lastPage: (json['last_page'] as num?)?.toInt(),
      lastPageUrl: json['last_page_url'] as String?,
      links: (json['links'] as List<dynamic>?)
          ?.map((e) => Link.fromJson(e as Map<String, dynamic>))
          .toList(),
      nextPageUrl: json['next_page_url'],
      path: json['path'] as String?,
      perPage: (json['per_page'] as num?)?.toInt(),
      prevPageUrl: json['prev_page_url'],
      to: (json['to'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$LoanContractRecordListImplToJson(
        _$LoanContractRecordListImpl instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.data,
      'first_page_url': instance.firstPageUrl,
      'from': instance.from,
      'last_page': instance.lastPage,
      'last_page_url': instance.lastPageUrl,
      'links': instance.links,
      'next_page_url': instance.nextPageUrl,
      'path': instance.path,
      'per_page': instance.perPage,
      'prev_page_url': instance.prevPageUrl,
      'to': instance.to,
      'total': instance.total,
    };

_$LoanContractRecordItemImpl _$$LoanContractRecordItemImplFromJson(
        Map<String, dynamic> json) =>
    _$LoanContractRecordItemImpl(
      id: (json['id'] as num?)?.toInt(),
      userid: (json['userid'] as num?)?.toInt(),
      bianhao: json['bianhao'] as String?,
      username: json['username'] as String?,
      number: (json['number'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      mark: json['mark'] as String?,
      rate: (json['rate'] as num?)?.toInt(),
      signImg: json['sign_img'] as String?,
      remainDownload: (json['remain_download'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$LoanContractRecordItemImplToJson(
        _$LoanContractRecordItemImpl instance) =>
    <String, dynamic>{
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
      'remain_download': instance.remainDownload,
    };

_$LinkImpl _$$LinkImplFromJson(Map<String, dynamic> json) => _$LinkImpl(
      url: json['url'] as String?,
      label: json['label'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$$LinkImplToJson(_$LinkImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'label': instance.label,
      'active': instance.active,
    };
