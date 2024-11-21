// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_proview_contract_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductProviewContractModelImpl _$$ProductProviewContractModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductProviewContractModelImpl(
      status: (json['status'] as num?)?.toInt(),
      msg: json['msg'] as String?,
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

Map<String, dynamic> _$$ProductProviewContractModelImplToJson(
        _$ProductProviewContractModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'msg': instance.msg,
      'date': instance.date,
      'Mb': instance.mb,
      'Pro': instance.pro,
      'ProBuy': instance.proBuy,
      'content': instance.content,
    };

_$DateImpl _$$DateImplFromJson(Map<String, dynamic> json) => _$DateImpl(
      dataShortCompany: json['data_shortCompany'] as String?,
      company: json['Company'] as String?,
      xmdata: json['xmdata'] as String?,
      zhouqi: json['zhouqi'] as String?,
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
      'data_shortCompany': instance.dataShortCompany,
      'Company': instance.company,
      'xmdata': instance.xmdata,
      'zhouqi': instance.zhouqi,
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
      riseTime: json['rise_time'] == null
          ? null
          : DateTime.parse(json['rise_time'] as String),
      frequency: (json['frequency'] as num?)?.toInt(),
      riseSettings: json['rise_settings'] as String?,
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
      endtime: json['endtime'] == null
          ? null
          : DateTime.parse(json['endtime'] as String),
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
      'rise_time': instance.riseTime?.toIso8601String(),
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
      'endtime': instance.endtime?.toIso8601String(),
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
      amount: (json['amount'] as num?)?.toInt(),
      bugcoupon: (json['bugcoupon'] as num?)?.toInt(),
      signImg: json['sign_img'] as String?,
      isInsurance: (json['is_insurance'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ProBuyImplToJson(_$ProBuyImpl instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'bugcoupon': instance.bugcoupon,
      'sign_img': instance.signImg,
      'is_insurance': instance.isInsurance,
    };
