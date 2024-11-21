import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:churn/components/black_styles_container.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:churn/pages/main_page/product/logic/product_normal_records_controller.dart';
import 'package:churn/components/confirmation_dialog.dart';
import '../../../../../components/pay_psw_sheet.dart';


class ProductNormalRecordsPage extends ConsumerWidget {
  const ProductNormalRecordsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(productNormalRecordsControllerProvider);
    final controller =
        ref.read(productNormalRecordsControllerProvider.notifier);

    return BlackStylesContainer(
      title: '我的投资',
      child: RefreshIndicator(
        onRefresh: controller.refreshData,
        child: ListView(
          controller: controller.scrollController,
          children: [
            Padding(
              padding: EdgeInsets.all(16.w),
              child: Column(
                children: [
                  _buildProfitCard(state),
                  SizedBox(height: 16.h),
                  ...state.investments.map((investment) => Column(
                        children: [
                          _buildInvestmentCard(context, investment, state, controller),
                          SizedBox(height: 16.h),
                        ],
                      )),
                  if (state.isLoading) const CircularProgressIndicator(),
                  if (!state.hasMore)
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.h),
                      child: const Text('没有更多数据了'),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfitCard(ProductNormalRecordsState state) {
    return Container(
      padding: EdgeInsets.all(24.w),
      decoration: BoxDecoration(
        color: const Color(0xFF282440),
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 14.h),
        decoration: BoxDecoration(
          color: const Color(0xFF15151D),
          borderRadius: BorderRadius.circular(20.r),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            _buildProfitColumn('已收利息(USDT)', state.info.ys ?? '0'),
            _buildProfitColumn('待收利息(USDT)', state.info.ds ?? '0'),
          ],
        ),
      ),
    );
  }

  Widget _buildProfitColumn(String title, String amount) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.white.withOpacity(0.6),
            fontSize: 14.sp,
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          amount,
          style: TextStyle(
            color: Colors.white,
            fontSize: 24.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _buildInvestmentCard(
      BuildContext context, Map<String, dynamic> investment, ProductNormalRecordsState state, ProductNormalRecordsController controller) {
    return Container(
      padding: EdgeInsets.all(16.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24.r),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                investment['title'] ?? '',
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xFF15151D),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.r),
                ),
                child: Text(
                  investment['status'] == 1
                      ? '投资中'
                      : investment['status'] == 0
                          ? '已完成'
                          : '结束',
                  style: TextStyle(
                    color: investment['status'] == 1
                        ? AppTheme().themeBackGroundColor
                        : const Color(0xFF757575),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8.h),
          _buildInfoRow('投资合同ID', investment['contract_no'] ?? ''),
          SizedBox(height: 4.h),
          _buildInfoRow('预计收益', '${investment['moneyCount']} USDT',
              alignment: MainAxisAlignment.start),
          SizedBox(height: 4.h),
          _buildInfoRow('投资时间', investment['created_at'] ?? '',
              alignment: MainAxisAlignment.start),
          SizedBox(height: 16.h),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
            decoration: BoxDecoration(
              color: const Color(0xFFF1F3F5),
              borderRadius: BorderRadius.circular(12.r),
            ),
            child: SizedBox(
              width: double.infinity,
              child: Wrap(
                spacing: 4.w,
                runSpacing: 16.h,
                children: [
                  _buildDetailItem('项目利率', '${investment['jyrsy']}%'),
                  _buildDetailItem('投资金额', '${investment['amount']} USDT'),
                  _buildDetailItem(
                      '项目周期', '${investment['shijian']} ${investment['qxdw']}'),
                  if ((investment['bugcoupon'] ?? '') != '0.00')
                    _buildDetailItem(
                        '加息券收益', '${investment['bugcoupon']} USDT'),
                  if ((investment['elseMoney'] ?? '') != '0.00')
                    _buildDetailItem('${investment['levelname']}收益',
                        '${investment['elseMoney']} USDT'),
                ],
              ),
            ),
          ),
          SizedBox(height: 16.h),
          Row(
            children: [
              if (investment['iszengsong'] != 1 &&
                  investment['status'] != 0 &&
                  ((state.info.isshow == 1 && investment['equity'] > 0) ||
                      investment['equity'] > 0))
                Expanded(
                  child: SizedBox(
                    height: 40.h,
                    child: ElevatedButton(
                      onPressed: () async {
                        bool? result = await ConfirmationDialog.show(
                          context: context,
                          title: '提示',
                          content: '解除需要扣除${investment['equity']} 积分',
                          confirmText: '确认',
                          cancelText: '取消',
                        );
                        if(result == true) {
                          // ignore: use_build_context_synchronously
                          showCustomBottomPayPassWordSheet(context, "请输入支付密码", (pwd) {
                          }, onConfirm: (pwd) {
                            if(pwd.isEmpty || pwd.length < 6) {
                              EasyLoading.showError('请输入6位支付密码');
                              return;
                            }
                            controller.jieChuInvest(context, id: investment['contract_no'], pwdPay: pwd);
                          });
                        } else {}
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                        side: const BorderSide(color: Color(0xFFBCBCBC)),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(12.r), // 设置圆角半径为20
                        ),
                      ),
                      child: const Text('解除合同'),
                    ),
                  ),
                ),
              Expanded(
                child: SizedBox(
                  height: 40.h,
                  child: ElevatedButton(
                    onPressed: () {
                      controller.toContractPage(context, investment['contract_no']);
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      side: const BorderSide(color: Color(0xFFBCBCBC)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.r), // 设置圆角半径为20
                      ),
                    ),
                    child: const Text('查看合同'),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Center(
            child: Column(
              children: [
                if (investment['sign_img'] == null ||
                    investment['sign_img'] == '')
                  GestureDetector(
                    onTap: () {
                      controller.toSignContractPage(context, investment['contract_no']);
                    },
                    child: Text(
                      '补签合同',
                      style: TextStyle(color: AppTheme().themeBackGroundColor),
                    ),
                  ),
                SizedBox(height: 4.h),
                if (investment['sign_img'] != null &&
                    investment['sign_img'] != '' &&
                    state.info.downloadSwitch == 1)
                  GestureDetector(
                    onTap: () {
                      controller.downloadContractData(context, investment['contract_no']);
                    },
                    child: Text(
                      '下载合同',
                      style: TextStyle(color: AppTheme().themeBackGroundColor),
                    ),
                  ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(String title, String value,
      {MainAxisAlignment alignment = MainAxisAlignment.spaceBetween}) {
    return Row(
      mainAxisAlignment: alignment,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          title,
          style: TextStyle(
            color: const Color(0xFF15151D),
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(width: 8.w),
        Text(
          value,
          style: TextStyle(
            color: const Color(0xFF15151D),
            fontSize: 14.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  Widget _buildDetailItem(String title, String value) {
    return SizedBox(
      width: 120.w,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            value,
            style: TextStyle(
              color: const Color(0xFF15151D),
              fontSize: 18.sp,
            ),
          ),
          SizedBox(height: 4.h),
          Text(
            title,
            style: TextStyle(
              color: const Color(0xFF5C5D69),
              fontSize: 14.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
