// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_contract_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductContractInfoModelImpl _$$ProductContractInfoModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductContractInfoModelImpl(
      status: (json['status'] as num?)?.toInt(),
      msg: json['msg'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductContractInfoModelImplToJson(
        _$ProductContractInfoModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'data': instance.data,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      date: json['date'] == null
          ? null
          : Date.fromJson(json['date'] as Map<String, dynamic>),
      mb: json['Mb'] == null
          ? null
          : Mb.fromJson(json['Mb'] as Map<String, dynamic>),
      pro: json['Pro'] == null
          ? null
          : Pro.fromJson(json['Pro'] as Map<String, dynamic>),
      proBuy: json['ProBuy'] == null
          ? null
          : ProBuy.fromJson(json['ProBuy'] as Map<String, dynamic>),
      content: json['content'] as String?,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'date': instance.date,
      'Mb': instance.mb,
      'Pro': instance.pro,
      'ProBuy': instance.proBuy,
      'content': instance.content,
    };

_$DateImpl _$$DateImplFromJson(Map<String, dynamic> json) => _$DateImpl(
      insuranceSwitch: (json['insurance_switch'] as num?)?.toInt(),
      esignature: (json['esignature'] as num?)?.toInt(),
      download: (json['download'] as num?)?.toInt(),
      dataShortCompany: json['data_shortCompany'] as String?,
      company: json['Company'] as String?,
      xmdata: json['xmdata'] as String?,
      memberlevels: json['Memberlevels'] as String?,
      zhouqi: json['zhouqi'] == null
          ? null
          : DateTime.parse(json['zhouqi'] as String),
      endshouyi: json['endshouyi'] as String?,
      elseMoney: json['elseMoney'] as String?,
      bugcoupon: json['bugcoupon'] as String?,
      endbenjin: (json['endbenjin'] as num?)?.toInt(),
      endMoney: json['endMoney'] as String?,
      dblogo: json['dblogo'] as String?,
      offiseal: json['offiseal'] as String?,
      picsign: json['picsign'] as String?,
      issign: (json['issign'] as num?)?.toInt(),
      iscertificate: (json['iscertificate'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$DateImplToJson(_$DateImpl instance) =>
    <String, dynamic>{
      'insurance_switch': instance.insuranceSwitch,
      'esignature': instance.esignature,
      'download': instance.download,
      'data_shortCompany': instance.dataShortCompany,
      'Company': instance.company,
      'xmdata': instance.xmdata,
      'Memberlevels': instance.memberlevels,
      'zhouqi': instance.zhouqi?.toIso8601String(),
      'endshouyi': instance.endshouyi,
      'elseMoney': instance.elseMoney,
      'bugcoupon': instance.bugcoupon,
      'endbenjin': instance.endbenjin,
      'endMoney': instance.endMoney,
      'dblogo': instance.dblogo,
      'offiseal': instance.offiseal,
      'picsign': instance.picsign,
      'issign': instance.issign,
      'iscertificate': instance.iscertificate,
    };

_$MbImpl _$$MbImplFromJson(Map<String, dynamic> json) => _$MbImpl(
      username: json['username'] as String?,
      realname: json['realname'] as String?,
      card: json['card'] as String?,
      bankrealname: json['bankrealname'] as String?,
      bankcode: json['bankcode'] as String?,
    );

Map<String, dynamic> _$$MbImplToJson(_$MbImpl instance) => <String, dynamic>{
      'username': instance.username,
      'realname': instance.realname,
      'card': instance.card,
      'bankrealname': instance.bankrealname,
      'bankcode': instance.bankcode,
    };

_$ProImpl _$$ProImplFromJson(Map<String, dynamic> json) => _$ProImpl(
      id: (json['id'] as num?)?.toInt(),
      categoryId: (json['category_id'] as num?)?.toInt(),
      categoryName: json['category_name'] as String?,
      title: json['title'] as String?,
      bljg: json['bljg'] as String?,
      xmgm: (json['xmgm'] as num?)?.toInt(),
      xmjd: (json['xmjd'] as num?)?.toInt(),
      qtje: (json['qtje'] as num?)?.toInt(),
      zgje: json['zgje'] as String?,
      isgao: (json['isgao'] as num?)?.toInt(),
      ktje: json['ktje'],
      jyrsy: json['jyrsy'] as String?,
      tqsyyj: json['tqsyyj'] as String?,
      shijian: json['shijian'] as String?,
      pic: json['pic'] as String?,
      content: json['content'] as String?,
      qxdw: json['qxdw'] as String?,
      hkfs: (json['hkfs'] as num?)?.toInt(),
      cishu: json['cishu'],
      tzzt: (json['tzzt'] as num?)?.toInt(),
      isft: (json['isft'] as num?)?.toInt(),
      ftjl: (json['ftjl'] as num?)?.toInt(),
      level: (json['level'] as num?)?.toInt(),
      issy: (json['issy'] as num?)?.toInt(),
      issj: (json['issj'] as num?)?.toInt(),
      isdt: (json['isdt'] as num?)?.toInt(),
      iswj: (json['iswj'] as num?)?.toInt(),
      sort: (json['sort'] as num?)?.toInt(),
      tzyq: (json['tzyq'] as num?)?.toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      cycle: (json['cycle'] as num?)?.toInt(),
      istzbug: (json['istzbug'] as num?)?.toInt(),
      isnew: (json['isnew'] as num?)?.toInt(),
      doubled: (json['doubled'] as num?)?.toInt(),
      countequity: (json['countequity'] as num?)?.toInt(),
      bugunmber: (json['bugunmber'] as num?)?.toInt(),
      ismake: (json['ismake'] as num?)?.toInt(),
      endingtime: json['endingtime'] == null
          ? null
          : DateTime.parse(json['endingtime'] as String),
      isaouttm: (json['isaouttm'] as num?)?.toInt(),
      intervalTime: (json['interval_time'] as num?)?.toInt(),
      riseTime: json['rise_time'],
      frequency: (json['frequency'] as num?)?.toInt(),
      riseSettings: json['rise_settings'],
      rise: (json['rise'] as num?)?.toDouble(),
      coupon: json['coupon'] as String?,
      givecoupon: json['givecoupon'] as String?,
      oldmoney: json['oldmoney'] as String?,
      daikuan: json['daikuan'] as String?,
      equity: json['equity'] as String?,
      integralgive: json['integralgive'] as String?,
      nextintegralgive: (json['nextintegralgive'] as num?)?.toInt(),
      ticket: (json['ticket'] as num?)?.toInt(),
      beans: (json['beans'] as num?)?.toInt(),
      xxtcbl: json['xxtcbl'] as String?,
      xxtcbll: json['xxtcbll'] as String?,
      xxtcblll: json['xxtcblll'] as String?,
      xxtcbllll: json['xxtcbllll'] as String?,
      jiechuhetong: (json['jiechuhetong'] as num?)?.toInt(),
      discount: (json['discount'] as num?)?.toInt(),
      discountlist: json['discountlist'] as String?,
      capital: (json['capital'] as num?)?.toInt(),
      specialbenefits: json['specialbenefits'] as String?,
      bjzk: (json['bjzk'] as num?)?.toInt(),
      endtime: json['endtime'],
      zengsongid: (json['zengsongid'] as num?)?.toInt(),
      nextpid: (json['nextpid'] as num?)?.toInt(),
      jfpid: (json['jfpid'] as num?)?.toInt(),
      joining: (json['joining'] as num?)?.toInt(),
      organizer: (json['organizer'] as num?)?.toInt(),
      isgroup: (json['isgroup'] as num?)?.toInt(),
      isGroupLerver: (json['is_group_lerver'] as num?)?.toInt(),
      extmoney: (json['extmoney'] as num?)?.toInt(),
      extday: (json['extday'] as num?)?.toInt(),
      groupcbl: json['groupcbl'] as String?,
      isnorate: (json['isnorate'] as num?)?.toInt(),
      presale: (json['presale'] as num?)?.toInt(),
      firstbuy: (json['firstbuy'] as num?)?.toInt(),
      insurance: (json['insurance'] as num?)?.toInt(),
      ftAfterSuccess: (json['ft_after_success'] as num?)?.toInt(),
      presentLevel: (json['present_level'] as num?)?.toInt(),
      returnDividends: (json['return_dividends'] as num?)?.toInt(),
      returnCapital: (json['return_capital'] as num?)?.toInt(),
      isAggregatedAmount: (json['is_aggregated_amount'] as num?)?.toInt(),
      hdSel: json['hd_sel'] as bool?,
      hdInfo: json['hd_info'] as String?,
    );

Map<String, dynamic> _$$ProImplToJson(_$ProImpl instance) => <String, dynamic>{
      'id': instance.id,
      'category_id': instance.categoryId,
      'category_name': instance.categoryName,
      'title': instance.title,
      'bljg': instance.bljg,
      'xmgm': instance.xmgm,
      'xmjd': instance.xmjd,
      'qtje': instance.qtje,
      'zgje': instance.zgje,
      'isgao': instance.isgao,
      'ktje': instance.ktje,
      'jyrsy': instance.jyrsy,
      'tqsyyj': instance.tqsyyj,
      'shijian': instance.shijian,
      'pic': instance.pic,
      'content': instance.content,
      'qxdw': instance.qxdw,
      'hkfs': instance.hkfs,
      'cishu': instance.cishu,
      'tzzt': instance.tzzt,
      'isft': instance.isft,
      'ftjl': instance.ftjl,
      'level': instance.level,
      'issy': instance.issy,
      'issj': instance.issj,
      'isdt': instance.isdt,
      'iswj': instance.iswj,
      'sort': instance.sort,
      'tzyq': instance.tzyq,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'cycle': instance.cycle,
      'istzbug': instance.istzbug,
      'isnew': instance.isnew,
      'doubled': instance.doubled,
      'countequity': instance.countequity,
      'bugunmber': instance.bugunmber,
      'ismake': instance.ismake,
      'endingtime': instance.endingtime?.toIso8601String(),
      'isaouttm': instance.isaouttm,
      'interval_time': instance.intervalTime,
      'rise_time': instance.riseTime,
      'frequency': instance.frequency,
      'rise_settings': instance.riseSettings,
      'rise': instance.rise,
      'coupon': instance.coupon,
      'givecoupon': instance.givecoupon,
      'oldmoney': instance.oldmoney,
      'daikuan': instance.daikuan,
      'equity': instance.equity,
      'integralgive': instance.integralgive,
      'nextintegralgive': instance.nextintegralgive,
      'ticket': instance.ticket,
      'beans': instance.beans,
      'xxtcbl': instance.xxtcbl,
      'xxtcbll': instance.xxtcbll,
      'xxtcblll': instance.xxtcblll,
      'xxtcbllll': instance.xxtcbllll,
      'jiechuhetong': instance.jiechuhetong,
      'discount': instance.discount,
      'discountlist': instance.discountlist,
      'capital': instance.capital,
      'specialbenefits': instance.specialbenefits,
      'bjzk': instance.bjzk,
      'endtime': instance.endtime,
      'zengsongid': instance.zengsongid,
      'nextpid': instance.nextpid,
      'jfpid': instance.jfpid,
      'joining': instance.joining,
      'organizer': instance.organizer,
      'isgroup': instance.isgroup,
      'is_group_lerver': instance.isGroupLerver,
      'extmoney': instance.extmoney,
      'extday': instance.extday,
      'groupcbl': instance.groupcbl,
      'isnorate': instance.isnorate,
      'presale': instance.presale,
      'firstbuy': instance.firstbuy,
      'insurance': instance.insurance,
      'ft_after_success': instance.ftAfterSuccess,
      'present_level': instance.presentLevel,
      'return_dividends': instance.returnDividends,
      'return_capital': instance.returnCapital,
      'is_aggregated_amount': instance.isAggregatedAmount,
      'hd_sel': instance.hdSel,
      'hd_info': instance.hdInfo,
    };

_$ProBuyImpl _$$ProBuyImplFromJson(Map<String, dynamic> json) => _$ProBuyImpl(
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
      bugcoupon: (json['bugcoupon'] as num?)?.toInt(),
      issort: (json['issort'] as num?)?.toInt(),
      daymoney: (json['daymoney'] as num?)?.toInt(),
      iszengsongOnly: (json['iszengsong_only'] as num?)?.toInt(),
      iszengsong: (json['iszengsong'] as num?)?.toInt(),
      insuranceAmount: json['insurance_amount'] as String?,
      isInsurance: (json['is_insurance'] as num?)?.toInt(),
      signImg: json['sign_img'] as String?,
      isAggregatedAmount: (json['is_aggregated_amount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ProBuyImplToJson(_$ProBuyImpl instance) =>
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
    };
