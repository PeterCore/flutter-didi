// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_tender_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserTenderModelImpl _$$UserTenderModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserTenderModelImpl(
      status: (json['status'] as num?)?.toInt(),
      list: json['list'] == null
          ? null
          : ListClass.fromJson(json['list'] as Map<String, dynamic>),
      pagesize: json['pagesize'] as String?,
      ys: json['ys'] as String?,
      ds: json['ds'] as String?,
      isshow: (json['isshow'] as num?)?.toInt(),
      integral: (json['integral'] as num?)?.toInt(),
      esignature: (json['esignature'] as num?)?.toInt(),
      insuranceSwitch: (json['insurance_switch'] as num?)?.toInt(),
      downloadSwitch: (json['download_switch'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$UserTenderModelImplToJson(
        _$UserTenderModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'list': instance.list,
      'pagesize': instance.pagesize,
      'ys': instance.ys,
      'ds': instance.ds,
      'isshow': instance.isshow,
      'integral': instance.integral,
      'esignature': instance.esignature,
      'insurance_switch': instance.insuranceSwitch,
      'download_switch': instance.downloadSwitch,
    };

_$ListClassImpl _$$ListClassImplFromJson(Map<String, dynamic> json) =>
    _$ListClassImpl(
      currentPage: (json['current_page'] as num?)?.toInt(),
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
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

Map<String, dynamic> _$$ListClassImplToJson(_$ListClassImpl instance) =>
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

_$DatumImpl _$$DatumImplFromJson(Map<String, dynamic> json) => _$DatumImpl(
      id: (json['id'] as num?)?.toInt(),
      contractNo: json['contract_no'] as String?,
      userid: (json['userid'] as num?)?.toInt(),
      username: json['username'] as String?,
      productid: (json['productid'] as num?)?.toInt(),
      amount: (json['amount'] as num?)?.toInt(),
      benefit: (json['benefit'] as num?)?.toInt(),
      ip: json['ip'] as String?,
      useritemTime: json['useritem_time'] == null
          ? null
          : DateTime.parse(json['useritem_time'] as String),
      useritemTime1: json['useritem_time1'],
      useritemTime2: json['useritem_time2'] == null
          ? null
          : DateTime.parse(json['useritem_time2'] as String),
      useritemCount: (json['useritem_count'] as num?)?.toInt(),
      status: (json['status'] as num?)?.toInt(),
      senddayCount: (json['sendday_count'] as num?)?.toInt(),
      level: (json['level'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      bugcoupon: json['bugcoupon'] as String?,
      issort: (json['issort'] as num?)?.toInt(),
      daymoney: (json['daymoney'] as num?)?.toInt(),
      iszengsongOnly: (json['iszengsong_only'] as num?)?.toInt(),
      iszengsong: (json['iszengsong'] as num?)?.toInt(),
      insuranceAmount: json['insurance_amount'] as String?,
      isInsurance: (json['is_insurance'] as num?)?.toInt(),
      signImg: json['sign_img'] as String?,
      isAggregatedAmount: (json['is_aggregated_amount'] as num?)?.toInt(),
      title: json['title'] as String?,
      jyrsy: json['jyrsy'] as String?,
      shijian: json['shijian'] as String?,
      qxdw: json['qxdw'] as String?,
      equity: (json['equity'] as num?)?.toInt(),
      rate: (json['rate'] as num?)?.toInt(),
      levelname: json['levelname'] as String?,
      moneyCount: json['moneyCount'] as String?,
      elseMoney: json['elseMoney'] as String?,
      shouyis: json['shouyis'] as String?,
      url: (json['url'] as num?)?.toInt(),
      remainDownload: (json['remain_download'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DatumImplToJson(_$DatumImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'contract_no': instance.contractNo,
      'userid': instance.userid,
      'username': instance.username,
      'productid': instance.productid,
      'amount': instance.amount,
      'benefit': instance.benefit,
      'ip': instance.ip,
      'useritem_time': instance.useritemTime?.toIso8601String(),
      'useritem_time1': instance.useritemTime1,
      'useritem_time2': instance.useritemTime2?.toIso8601String(),
      'useritem_count': instance.useritemCount,
      'status': instance.status,
      'sendday_count': instance.senddayCount,
      'level': instance.level,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'bugcoupon': instance.bugcoupon,
      'issort': instance.issort,
      'daymoney': instance.daymoney,
      'iszengsong_only': instance.iszengsongOnly,
      'iszengsong': instance.iszengsong,
      'insurance_amount': instance.insuranceAmount,
      'is_insurance': instance.isInsurance,
      'sign_img': instance.signImg,
      'is_aggregated_amount': instance.isAggregatedAmount,
      'title': instance.title,
      'jyrsy': instance.jyrsy,
      'shijian': instance.shijian,
      'qxdw': instance.qxdw,
      'equity': instance.equity,
      'rate': instance.rate,
      'levelname': instance.levelname,
      'moneyCount': instance.moneyCount,
      'elseMoney': instance.elseMoney,
      'shouyis': instance.shouyis,
      'url': instance.url,
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
