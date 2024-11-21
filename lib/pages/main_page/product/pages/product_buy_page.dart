import 'package:churn/assets_tool/ui_assets.dart';
import 'package:churn/components/black_styles_container.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../../components/pay_psw_sheet.dart';
import '../logic/product_buy_page_controller.dart';
import '../widgets/base_input.dart';
import '../widgets/product_section_card_widget.dart';

class ProductBuyPage extends ConsumerWidget {
  final String id;
  final String type; // normal, join, create
  const ProductBuyPage({super.key, required this.id, required this.type});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(productBuyProvider(id));
    final controller = ref.read(productBuyProvider(id).notifier);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if ((state.isShowGift ?? false)) {
        _showGiftModal(context, state, controller);
      }
      if ((state.isShowPsw ?? false)) {
        showCustomBottomPayPassWordSheet(context, "请输入支付密码", (pwd) {
          // controller.handlePay(context, pwd, type);
        }, onCancel: () {
          controller.updateIsShowPsw(false);
        }, onConfirm: (pwd) {
          if (pwd.isEmpty || pwd.length != 6) {
            EasyLoading.showError('请输入6位支付密码');
            return;
          }
          controller.handlePay(context, pwd, type);
        });
      }
    });
    return BlackStylesContainer(
      title: '我要投资',
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                  left: 16.w, right: 16.w, top: 16.h, bottom: 70.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildAccountBalanceContent(state),
                  SizedBox(height: 12.h),
                  if (type == 'join')
                    ProductSectionCardWidget(
                      title: '拼团口令',
                      content: LimitedRangeTextField(
                        maxLength: 8,
                        hintText: '请输入拼团口令',
                        onChanged: (value) {
                          controller.updateBuycode(value);
                        },
                      ),
                      trailing: GestureDetector(
                        onTap: () {
                          WmmDialog.showWMMDialog(context,
                              title: '拼团规则',
                              content: state.detail?.grouprules ?? '');
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '拼团规则',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFF6D68ED),
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            SizedBox(width: 4.w),
                            Icon(
                              Icons.help,
                              color: const Color(0xFF6D68ED),
                              size: 18.sp,
                            ),
                          ],
                        ),
                      ),
                    ),
                  if (type == 'create')
                    ProductSectionCardWidget(
                      title: '拼团人数',
                      content: LimitedRangeTextField(
                        minValue: 0,
                        maxValue:
                            int.parse(state.detail?.groupmax ?? '9999999'),
                        hintText:
                            '请输入拼团人数(${state.detail?.groupmin ?? ''} - ${state.detail?.groupmax ?? ''})',
                        onChanged: (value) {
                          controller.updateFennum(value);
                        },
                      ),
                      trailing: GestureDetector(
                        onTap: () {
                          WmmDialog.showWMMDialog(context,
                              title: '拼团规则',
                              content: state.detail?.grouprules ?? '');
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              '拼团规则',
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                                color: const Color(0xFF6D68ED),
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            SizedBox(width: 4.w),
                            Icon(
                              Icons.help_outline,
                              color: const Color(0xFF6D68ED),
                              size: 18.sp,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ProductSectionCardWidget(
                    title: '投资金额',
                    content: LimitedRangeTextField(
                      minValue: 0,
                      maxValue:
                          int.parse(state.productview?.zgje ?? '999999999'),
                      hintText: '${state.productview?.qtje ?? 0} USDT起投',
                      onChanged: (value) {
                        controller.updateInvestmentAmount(value);
                      },
                    ),
                    trailing: Text(
                      '最高投资金额${state.productview?.zgje ?? 0}USDT',
                      style: TextStyle(
                        color: const Color(0xFF3B3944),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  ProductSectionCardWidget(
                    title: '预期收益',
                    content: _buildExpectedIncomeContent(state, controller),
                    trailing: Text(
                      '${state.expectedEarning} USDT',
                      style: TextStyle(
                        color: const Color(0xFF9A68ED),
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  ProductSectionCardWidget(
                    content:
                        _buildCoupenCardContent(context, state, controller),
                  ),
                  ProductSectionCardWidget(
                    title: '收益说明',
                    content: _buildIncomeExplanationContent(state),
                  ),
                  ProductSectionCardWidget(
                    content: _buildReminderContent(state),
                  ),
                ],
              ),
            ),
          ),
          _buildBottomButton(context, controller),
        ],
      ),
    );
  }

  Widget _buildBottomButton(
      BuildContext context, ProductBuyController controller) {
    return Positioned(
      bottom: 0,
      left: 0,
      right: 0,
      child: Container(
        color: Colors.white,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        height: 68.h,
        child: ElevatedButton(
          onPressed: () {
            controller.buyProduct(type, context);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF15141C),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            minimumSize: Size(double.infinity, 44.h),
          ),
          child: Text(
            '立即投资',
            style: TextStyle(
              color: Colors.white,
              fontSize: 15.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRowCard(BuildContext context,
      {required String imagePath,
      required String label,
      String? trailing,
      bool showArrow = false,
      VoidCallback? onTap}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            width: 24.w,
            height: 24.h,
          ),
          SizedBox(width: 8.w),
          Text(
            label,
            style: TextStyle(
                color: const Color(0xFF15141C),
                fontSize: 18.sp,
                fontWeight: FontWeight.w600),
          ),
          const Spacer(),
          InkWell(
            onTap: onTap,
            child: Row(
              children: [
                if (trailing != null)
                  Text(
                    trailing,
                    style: TextStyle(
                        color: const Color(0xFF5B5C69),
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400),
                  ),
                if (showArrow)
                  Icon(Icons.arrow_forward_ios,
                      color: const Color(0xFF5B5C69), size: 14.sp),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildCoupenCardContent(BuildContext context, ProductBuyState state,
      ProductBuyController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (state.detail?.isInsurance == 1)
          _buildRowCard(
            context,
            imagePath: UIAssets.source?.security ?? '',
            label: '保险',
            trailing: '费用 ${state.truncatedInvestmentEarnings} USDT',
          ),
        if (state.detail?.makelist != null &&
            state.detail!.makelist!.isNotEmpty)
          _buildRowCard(
            context,
            imagePath: UIAssets.source?.coupon ?? '',
            label: '代金券',
            trailing: '${state.make?['name'] ?? '请选择代金券'}',
            showArrow: true,
            onTap: () {
              ActionSheet.show(
                  context: context,
                  options: [
                    ...?state.detail?.makelist,
                    {'name': '不使用代金券', 'id': 0, 'money': 0},
                  ],
                  title: '请选择代金券',
                  onSelected: (value) {
                    controller.updateMake(value);
                  });
            },
          ),
        if (state.detail?.couponlist != null &&
            state.detail!.couponlist!.isNotEmpty)
          _buildRowCard(
            context,
            imagePath: UIAssets.source?.localOffer ?? '',
            label: '加息券',
            trailing: '${state.coupon?['name'] ?? '请选择加息券'}',
            showArrow: true,
            onTap: () {
              ActionSheet.show(
                  context: context,
                  options: [
                    ...?state.detail?.couponlist,
                    {'name': '不使用加息券', 'id': 0, 'money': 0},
                  ],
                  title: '请选择加息券',
                  onSelected: (value) {
                    controller.updateCoupon(value);
                  });
            },
          ),
        if ((state.coupon?['id'] ?? 0) != 0)
          Padding(
            padding: EdgeInsets.only(left: 32.w),
            child: Text(
              '加息券收益 ${state.calculateCouponExtMoney} USDT',
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: const Color(0xFF9A68ED),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400),
            ),
          )
      ],
    );
  }

  Widget _buildAccountBalanceContent(ProductBuyState state) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: const Color(0xFF282440),
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 24.h),
            decoration: ShapeDecoration(
              color: const Color(0xFF15141C),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '账户可用余额（USDT）',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(
                  state.detail?.memberamount ?? '0.00',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildExpectedIncomeContent(
      ProductBuyState state, ProductBuyController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...(state.detail?.memberlevels ?? []).map((item) => Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  '${item.name ?? ""}收益',
                  style: TextStyle(
                    color: const Color(0xFF5B5C69),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(width: 8.w),
                Text(
                  '${controller.calculateInvestmentEarnings(rate: item.rate ?? 0).toStringAsFixed(2)} USDT',
                  style: TextStyle(
                    color: const Color(0xFF15141C),
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            )),
      ],
    );
  }

  Widget _buildIncomeExplanationContent(ProductBuyState state) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '结息时间',
          style: TextStyle(
              color: const Color(0xFF5B5C69),
              fontSize: 14.sp,
              fontWeight: FontWeight.w400),
        ),
        Text(
          state.productview?.settlement ?? '',
          style: TextStyle(
              color: const Color(0xFF15141C),
              fontSize: 14.sp,
              fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 10.h),
        Text('收益期限',
            style: TextStyle(
                color: const Color(0xFF5B5C69),
                fontSize: 14.sp,
                fontWeight: FontWeight.w400)),
        Text(state.productview?.profitTerm ?? '',
            style: TextStyle(
                color: const Color(0xFF15141C),
                fontSize: 14.sp,
                fontWeight: FontWeight.w500)),
        if (state.productview?.specialbenefits != null)
          Container(
            margin: EdgeInsets.only(top: 10.h),
            child: Text(state.productview?.specialbenefits ?? '',
                style: TextStyle(
                    color: const Color(0xFFe84b22),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400)),
          ),
      ],
    );
  }

  Widget _buildReminderContent(ProductBuyState state) {
    return Text(
      state.detail?.content ?? '',
      style: TextStyle(
          color: const Color(0xFF3B3944),
          fontSize: 14.sp,
          fontWeight: FontWeight.w400),
    );
  }

  void _showGiftModal(BuildContext context, ProductBuyState state,
          ProductBuyController controller) =>
      {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return Dialog(
              insetPadding: EdgeInsets.all(38.w),
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Container(
                  padding: EdgeInsets.all(16.w),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        const Color(0xFF9A68ED).withOpacity(0.4),
                        const Color(0xFFEBF1FF)
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: const [0.0, 0.3],
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              '投资赠送',
                              style: TextStyle(
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xFF9A68ED)),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              state.giftInfo.title ?? '',
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w500,
                                  color: const Color(0xFF9A68ED)),
                            ),
                          ),
                          SizedBox(height: 16.h),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.network(
                              state.giftInfo.image ?? '',
                              fit: BoxFit.cover,
                              width: 90.w,
                              height: 90.h,
                              loadingBuilder: (BuildContext context,
                                  Widget child,
                                  ImageChunkEvent? loadingProgress) {
                                if (loadingProgress == null) {
                                  return child;
                                } else {
                                  return Center(
                                    child: CircularProgressIndicator(
                                      value:
                                          loadingProgress.expectedTotalBytes !=
                                                  null
                                              ? loadingProgress
                                                      .cumulativeBytesLoaded /
                                                  loadingProgress
                                                      .expectedTotalBytes!
                                              : null,
                                    ),
                                  );
                                }
                              },
                              errorBuilder: (BuildContext context, Object error,
                                  StackTrace? stackTrace) {
                                return const Text('加载图片出错');
                              },
                            ),
                          ),
                          SizedBox(height: 28.h),
                          if (state.addressInfo?.id == null)
                            Text("暂无地址",
                                style: TextStyle(
                                    color: const Color(0xFF666666),
                                    fontSize: 14.sp,
                                    fontWeight: FontWeight.w400)),
                          if (state.addressInfo?.id != null)
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                    "${state.addressInfo?.location}${state.addressInfo?.addressMask}"),
                                Text(
                                    "${state.addressInfo?.nameMask} ${state.addressInfo?.phoneMask}"),
                              ],
                            ),
                          SizedBox(height: 16.h),
                          GestureDetector(
                            onTap: () {
                              controller.goAddressPage(context);
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  state.addressInfo?.id == null
                                      ? "选择或者添加地址"
                                      : "更换地址",
                                  style: TextStyle(
                                      color: const Color(0xFF6D68ED),
                                      fontSize: 14.sp,
                                      fontWeight: FontWeight.w400),
                                ),
                                const Icon(Icons.arrow_forward_ios,
                                    size: 14, color: Color(0xFF6D68ED)),
                              ],
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Container(
                            width: double.infinity,
                            height: 44.h,
                            decoration: BoxDecoration(
                              color: const Color(0xFF15151D),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: ElevatedButton(
                              onPressed: () {
                                controller.signAgreement(context);
                              },
                              child: Text("保存",
                                  style: TextStyle(
                                      fontSize: 18.sp, color: Colors.white)),
                            ),
                          ),
                          SizedBox(height: 20.h),
                          Column(
                            children: [
                              Text(
                                '关于赠送的礼品',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: const Color(0xFF6D68ED),
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                '请稍后前往"积分商城"—“兑换记录”',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: const Color(0xFF6D68ED),
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                '查看详情（兑换规则）',
                                style: TextStyle(
                                    fontSize: 14.sp,
                                    color: const Color(0xFF6D68ED),
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          )
                        ],
                      ),
                      Positioned(
                        right: -10,
                        top: -80,
                        child: Image.asset(
                          UIAssets.source!.giftBg,
                          width: 150,
                          height: 150,
                        ),
                      ),
                    ],
                  )),
            );
          },
        ).then((value) {
          controller.updateIsShowGift(false);
        })
      };
}
