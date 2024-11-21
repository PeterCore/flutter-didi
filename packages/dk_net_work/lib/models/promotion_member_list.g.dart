// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'promotion_member_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PromotionMemberListImpl _$$PromotionMemberListImplFromJson(
        Map<String, dynamic> json) =>
    _$PromotionMemberListImpl(
      status: (json['status'] as num?)?.toInt(),
      mtype: (json['mtype'] as num?)?.toInt(),
      list: json['list'] == null
          ? null
          : MemberList.fromJson(json['list'] as Map<String, dynamic>),
      pagesize: (json['pagesize'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PromotionMemberListImplToJson(
        _$PromotionMemberListImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'mtype': instance.mtype,
      'list': instance.list,
      'pagesize': instance.pagesize,
    };

_$MemberListImpl _$$MemberListImplFromJson(Map<String, dynamic> json) =>
    _$MemberListImpl(
      currentPage: (json['current_page'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => MemberItem.fromJson(e as Map<String, dynamic>))
          .toList(),
      firstPageUrl: json['first_page_url'] as String?,
      from: (json['from'] as num?)?.toInt(),
      lastPage: (json['last_page'] as num?)?.toInt(),
      lastPageUrl: json['last_page_url'] as String?,
      nextPageUrl: json['next_page_url'],
      path: json['path'] as String?,
      perPage: (json['per_page'] as num?)?.toInt(),
      prevPageUrl: json['prev_page_url'],
      to: (json['to'] as num?)?.toInt(),
      total: (json['total'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MemberListImplToJson(_$MemberListImpl instance) =>
    <String, dynamic>{
      'current_page': instance.currentPage,
      'data': instance.data,
      'first_page_url': instance.firstPageUrl,
      'from': instance.from,
      'last_page': instance.lastPage,
      'last_page_url': instance.lastPageUrl,
      'next_page_url': instance.nextPageUrl,
      'path': instance.path,
      'per_page': instance.perPage,
      'prev_page_url': instance.prevPageUrl,
      'to': instance.to,
      'total': instance.total,
    };

_$MemberItemImpl _$$MemberItemImplFromJson(Map<String, dynamic> json) =>
    _$MemberItemImpl(
      username: json['username'] as String?,
      realname: json['realname'] as String?,
      id: (json['id'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      txmoney: json['txmoney'] as String?,
      duodeli: (json['duodeli'] as num?)?.toInt(),
      amount: json['amount'] as String?,
      invicode: json['invicode'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      nextnunber: (json['nextnunber'] as num?)?.toInt(),
      nextwithdrawals: json['nextwithdrawals'] as String?,
      nextrecharges: json['nextrecharges'] as String?,
      touzi: json['touzi'] as String?,
      tixian: json['tixian'] as String?,
      yuebao: json['yuebao'] as String?,
    );

Map<String, dynamic> _$$MemberItemImplToJson(_$MemberItemImpl instance) =>
    <String, dynamic>{
      'username': instance.username,
      'realname': instance.realname,
      'id': instance.id,
      'created_at': instance.createdAt?.toIso8601String(),
      'txmoney': instance.txmoney,
      'duodeli': instance.duodeli,
      'amount': instance.amount,
      'invicode': instance.invicode,
      'date': instance.date?.toIso8601String(),
      'nextnunber': instance.nextnunber,
      'nextwithdrawals': instance.nextwithdrawals,
      'nextrecharges': instance.nextrecharges,
      'touzi': instance.touzi,
      'tixian': instance.tixian,
      'yuebao': instance.yuebao,
    };
