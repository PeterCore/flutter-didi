import 'package:churn/assets_tool/ui_assets.dart';
import 'package:churn/components/black_styles_container.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../widgets/base_countdown_wiget.dart';
import '../logic/product_detail_page_controller.dart';
import '../widgets/product_card_widget.dart';
import '../widgets/product_section_card_widget.dart';

class ProductDetailPage extends ConsumerWidget {
  final String id;
  final String type; // normal, join, create

  ProductDetailPage({super.key, required this.id, required this.type});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(productDetailProvider(id));
    final controller = ref.read(productDetailProvider(id).notifier);

    return BlackStylesContainer(
      title: '投资详情',
      rightActions: [
        if (type != 'normal')
          GestureDetector(
            onTap: () {
              if (state.detail?.grouprules != null) {
                WmmDialog.showWMMDialog(context,
                    title: "拼团规则", content: state.detail?.grouprules ?? '');
              }
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '拼团规则',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: AppTheme().themeBackGroundColor,
                  ),
                ),
                SizedBox(width: 4.w),
                Icon(
                  Icons.help,
                  color: AppTheme().themeBackGroundColor,
                  size: 16.sp,
                ),
              ],
            ),
          ),
      ],
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                  left: 16.w, right: 16.w, top: 16.h, bottom: 99.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductCardWidget(
                      item: state.item, isShowBtn: false, isShowInfo: false),
                  if (type != 'normal')
                    ProductSectionCardWidget(
                      title: '奖励规则',
                      content: _buildGroupRewardRulesContent(state),
                    ),
                  ProductSectionCardWidget(
                      title: '产品介绍',
                      content: _buildProductIntroductionContent(state)),
                  ProductSectionCardWidget(
                      title: '收益说明',
                      content: _buildIncomeExplanationContent(state)),
                  ProductSectionCardWidget(
                      title: '项目详情',
                      content: _buildProjectDetailsContent(state)),
                ],
              ),
            ),
          ),
          _buildBottomButton(context, state, controller),
        ],
      ),
    );
  }

  Widget _buildBottomButton(
      BuildContext context, ProductDetailState state, controller) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        color: Colors.white,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(children: [
          if (type == 'join')
            Text('参与成功即可奖励投资金额的${state.productview?.joining ?? 0}%',
                style:
                    TextStyle(fontSize: 16.sp, color: const Color(0xFF9A68ED))),
          SizedBox(
            height: 52.h,
            child: ElevatedButton(
              onPressed: () {
                if (state.productview?.ismake == 1 &&
                    state.productview?.ismake2 == 1 &&
                    state.productview?.presale == 0) {
                  return;
                }
                controller.onButtonPressed(context, type);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF15141C),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                minimumSize: Size(double.infinity, 44.h),
              ),
              child: state.productview?.ismake == 1 &&
                      state.productview?.ismake2 == 1 &&
                      state.productview?.presale == 0
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '开放时间:',
                          style:
                              TextStyle(fontSize: 14.sp, color: Colors.white),
                        ),
                        CountdownTimer(
                          endTime: DateTime.parse(state.productview?.endtime ??
                              ''), // 传递 DateTime 参数
                        )
                      ],
                    )
                  : Text(
                      _getActionText(state.productview),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
            ),
          ),
        ]),
      ),
    );
  }

  String _getActionText(item) {
    if (item == null) return '';
    if (type == 'join') {
      return '参与拼团';
    } else if (type == 'create') {
      return '发起拼团';
    }
    if (item.xmjd! >= 100) {
      return '项目已投满';
    } else if (item.presale == 1) {
      return '暂未开放';
    } else if (item.categoryId == 101) {
      return item.presentLevelText;
    } else {
      return '立即投资';
    }
  }

  Widget _buildGroupRewardRulesContent(ProductDetailState state) {
    if (type == 'join') {
      return Row(
        children: [
          Text('拼团成功奖励投资金额的', style: TextStyle(fontSize: 16.sp)),
          Text('${state.productview?.joining ?? 0}%',
              style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xFF9A68ED))),
        ],
      );
    } else {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: (state.groupcbl ?? []).map((item) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        '参与人数 ',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF15141C),
                        ),
                      ),
                      Text(
                        '${item['minnumber']} - ${item['maxnumber']}',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF6D68ED),
                        ),
                      ),
                      Text(
                        ' 人',
                        style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xFF15141C),
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    UIAssets.source!.pdGroupPeople,
                    width: 80.w,
                    height: 24.h,
                  )
                ],
              ),
              Row(
                children: [
                  Text(
                    '奖励团员总投资的',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF5B5C69),
                    ),
                  ),
                  SizedBox(width: 4.w),
                  Text(
                    '${item['init'] ?? 0}%',
                    style: TextStyle(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF9A68ED),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.h),
            ],
          );
        }).toList(),
      );
    }
  }

  Widget _buildProductIntroductionContent(ProductDetailState state) {
    List<Map<String, dynamic>> infoList = [
      {
        "label": "项目金额",
        "value": state.productview?.xmgm ?? '',
        "suffix": "USDT"
      },
      {"label": "项目利率", "value": state.productview?.jyrsy ?? '', "suffix": "%"},
      {
        "label": "保费比例",
        "value": state.productview?.insurance ?? '',
        "suffix": "%",
        "isShow": (state.productview?.insurance ?? 0) > 0
      },
      {
        "label": "投资次数",
        "value": state.productview?.bugunmber ?? '',
        "suffix": "次"
      },
      {"label": "返本方式", "value": state.productview?.dividendMethod ?? ''},
      {"label": "担保机构", "value": state.productview?.bljg ?? ''},
      {"label": "项目周期", "value": state.productview?.text5 ?? ''},
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...infoList.map((item) {
          if (item['isShow'] == false) {
            return const SizedBox();
          }
          return _buildInfoRowOrColumn(
              item['label'], '${item['value']}${item['suffix'] ?? ''}');
        }),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: state.productview?.specialbenefits ?? '',
                style: TextStyle(
                  color: const Color(0xFFe84b22),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildIncomeExplanationContent(ProductDetailState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildInfoRowOrColumn('预计收益', '${state.productview?.text6 ?? 0}%',
            isColumn: true),
        SizedBox(height: 10.h),
        _buildInfoRowOrColumn('详细说明', state.productview?.text6 ?? '',
            isColumn: true),
      ],
    );
  }

  Widget _buildProjectDetailsContent(ProductDetailState state) {
    return HtmlWidget(
      state.productview?.content ?? '',
    );
  }

  Widget _buildInfoRowOrColumn(String label, String value,
      {bool isColumn = false}) {
    Widget labelText = Text(
      label,
      style: _infoLabelStyle,
    );

    Widget valueText = Text(
      value,
      style: _infoValueStyle,
    );

    if (isColumn) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          labelText,
          SizedBox(height: 4.h),
          valueText,
        ],
      );
    } else {
      return Container(
        margin: EdgeInsets.only(bottom: 8.h),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            labelText,
            SizedBox(width: 8.w),
            Expanded(child: valueText),
          ],
        ),
      );
    }
  }

  final TextStyle _infoLabelStyle = TextStyle(
    color: const Color(0xFF5B5C69),
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );

  final TextStyle _infoValueStyle = TextStyle(
    color: const Color(0xFF15141C),
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
  );
}
