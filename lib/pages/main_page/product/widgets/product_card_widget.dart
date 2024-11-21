import 'package:dk_net_work/models/product_list_model.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

import '../../../../router_config.dart';

class ProductCardWidget extends StatelessWidget {
  final bool isShowBtn;
  final bool isShowInfo;
  final Datum? item;

  const ProductCardWidget({
    super.key,
    this.isShowBtn = true,
    this.isShowInfo = true,
    this.item,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 12.h),
      padding: EdgeInsets.all(20.w),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: const Color(0xFF282440),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTitle(),
          SizedBox(height: 12.h),
          _buildDescriptionSections(),
          SizedBox(height: 12.h),
          _buildInvestmentDetails(context),
        ],
      ),
    );
  }

  TextStyle _titleTextStyle({
    double fontSize = 14,
    FontWeight fontWeight = FontWeight.w600,
    Color color = Colors.white,
  }) {
    return TextStyle(
      color: color,
      fontSize: fontSize,
      fontWeight: fontWeight,
    );
  }

  Widget _buildTitle() {
    return Text(
      item?.title ?? "",
      style: _titleTextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _buildDescriptionSections() {
    final List<Map<String, dynamic>> descriptions = [
      {
        'title': '',
        'value': item?.dividendMethod ?? '',
        "isShow": item?.dividendMethod != null,
      },
      {
        'title': '投资金额',
        'value': item != null && item!.qtje == item!.zgje
            ? '${item!.qtje} USDT'
            : '${item?.qtje ?? ""} - ${item?.zgje ?? ""} USDT',
        "isShow": true,
      },
      {
        'title': '保费比例',
        'value': '${item?.insurance ?? 0}%',
        'isShow': (item?.insurance ?? 0) > 0,
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:
          descriptions.where((section) => section['isShow']).map((section) {
        return Row(
          children: [
            Icon(
              Icons.circle,
              size: 4.0,
              color: Colors.white.withOpacity(0.8),
            ),
            SizedBox(width: 4.w),
            Text(
              section['title'],
              style:
                  _titleTextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
            ),
            Text(
              section['value'],
              style:
                  _titleTextStyle(fontSize: 12.sp, fontWeight: FontWeight.w400),
            ),
          ],
        );
      }).toList(),
    );
  }

  Widget _buildInvestmentDetails(BuildContext context) {
    if (item == null) return const SizedBox.shrink();
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: const Color(0xFF15141C),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildReleaseAndDuration(),
          SizedBox(height: 12.h),
          _buildProgressBar(),
          if (isShowInfo) _buildInvestmentProjectDetails(context),
          _buildBottomButton(context),
        ],
      ),
    );
  }

  Widget _buildReleaseAndDuration() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildInfoRow('项目利率', '${item?.jyrsy ?? 0}%'),
        _buildInfoRow(
          '项目周期(${item?.hkfs == 2 ? "小时" : "天"})',
          ((int.parse(item?.shijian ?? '')) * (item?.cycle ?? 0)).toString(),
        ),
      ],
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          label,
          style: _titleTextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.white.withOpacity(0.8)),
        ),
        SizedBox(width: 12.w),
        Text(
          value,
          style: _titleTextStyle(fontSize: 16, fontWeight: FontWeight.w700),
        ),
      ],
    );
  }

  Widget _buildProgressBar() {
    double progress = (item?.xmjd ?? 0) / 100;
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 8.h,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: LinearProgressIndicator(
                value: progress,
                valueColor:
                    const AlwaysStoppedAnimation<Color>(Color(0xFF9A68ED)),
                backgroundColor: Colors.white.withOpacity(0.2),
              ),
            ),
          ),
        ),
        SizedBox(width: 10.w),
        Text(
          '${(progress * 100).toStringAsFixed(0)}%',
          style: _titleTextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: const Color(0xFF9A68ED)),
        ),
      ],
    );
  }

  Widget _buildInvestmentProjectDetails(BuildContext context) {
    final List<Map<String, dynamic>> sections = [
      {
        'title': '开放时间',
        'data': item?.endingtime ?? '',
        'isShow': item?.presale == 0 && item?.ismake == 1,
      },
      {
        'title': '投资要求',
        'data': item?.demandTagList ?? [],
        'isShow': item?.demandTagList?.isNotEmpty ?? false,
      },
      {
        'title': '特殊福利',
        'data': item?.specialTagList ?? [],
        'isShow': item?.specialTagList?.isNotEmpty ?? false,
      },
      {
        'title': '支持使用',
        'data': item?.supportuse ?? [],
        'isShow': item?.supportuse?.isNotEmpty ?? false,
      },
      {
        'title': '投资赠送',
        'data': item?.investgift ?? [],
        'isShow': item?.investgift?.isNotEmpty ?? false,
      },
      {
        'title': '推广奖励',
        'data': item?.allreward ?? [],
        'isShow': item?.allreward?.isNotEmpty ?? false,
      },
      {
        'title': '投资注意',
        'data': item?.attentionTagList ?? [],
        'isShow': item?.attentionTagList?.isNotEmpty ?? false,
      },
      {
        'title': '发起要求',
        'data': item?.groupDemandTagList ?? [],
        'isShow': item?.groupDemandTagList?.isNotEmpty ?? false,
      },
    ];

    return Container(
        margin: EdgeInsets.only(bottom: 12.h, top: 12.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:
              sections.where((section) => section['isShow']).map((section) {
            return Padding(
              padding: EdgeInsets.only(bottom: 12.h),
              child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  section['title'],
                  style: _titleTextStyle(
                      fontSize: 14.sp, fontWeight: FontWeight.w600),
                ),
                SizedBox(width: 8.h),
                section['data'] is List
                    ? Expanded(
                        child: Wrap(
                          spacing: 8.0,
                          runSpacing: 4.0,
                          children: (section['data'] as List).map((data) {
                            return Text(
                              data,
                              style: _titleTextStyle(
                                  fontSize: 12.sp, fontWeight: FontWeight.w500),
                            );
                          }).toList(),
                        ),
                      )
                    : Text(
                        section['data'],
                        style: _titleTextStyle(
                            fontSize: 12.sp, fontWeight: FontWeight.w500),
                      ),
                ],
              ),
            );
          }).toList(),
        ));
  }

  Widget _buildBottomButton(BuildContext context) {
    if (!isShowBtn || item == null) return const SizedBox.shrink();

    return item!.categoryId == 57
        ? _buildGroupButton(context)
        : _buildNormalButton(context);
  }

  Widget _buildGroupButton(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            width: double.infinity,
            height: 56.h,
            child: _buildCommonButton(
                context, '参与拼团', const Color(0xFF9A68ED), 'join'),
          ),
        ),
        SizedBox(width: 10.w),
        Expanded(
          child: SizedBox(
            width: double.infinity,
            height: 56.h,
            child: _buildCommonButton(
                context, '发起拼团', const Color(0xFF6D68ED), 'create'),
          ),
        ),
      ],
    );
  }

  Widget _buildNormalButton(BuildContext context) {
    String actionText = _getActionText(item!);

    return SizedBox(
      width: double.infinity,
      height: 44.h,
      child: _buildCommonButton(
          context, actionText, const Color(0xFF6D68ED), 'normal'),
    );
  }

  ElevatedButton _buildCommonButton(
      BuildContext context, String text, Color color, String type) {
    return ElevatedButton(
      onPressed: () {
        if (item == null) return;
        pushPage(context,
            path: PagePath.productDetailPage,
            ext: {'id': item!.id.toString(), 'type': type});
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Text(
        text,
        style: _titleTextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
    );
  }

  String _getActionText(Datum item) {
    if (item.xmjd! >= 100) {
      return '项目已投满';
    } else {
      return item.categoryId != 101
          ? '立即投资'
          : (item.presentLevelText ?? '立即分享');
    }
  }
}
