import 'package:churn/components/pay_psw_sheet.dart';
import 'package:churn/pages/main_page/mine/logic/address_info_provider.dart';
import 'package:churn/pages/main_page/mine/widgets/address/delivery_address_info_card_widget.dart';
import 'package:churn/router_config.dart';
import 'package:dk_net_work/dk_net_work_lib.dart';
import 'package:dk_net_work/models/user_default_address_info.dart';
import 'package:dk_utils/components/gradient_button.dart';
import 'package:dk_utils/components/image/net_image_cached.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExchangePointProductWidget extends ConsumerStatefulWidget {
  const ExchangePointProductWidget({
    super.key,
    required this.imageUrl,
    required this.quantity,
    required this.productValue,
    required this.productId,
    required this.desc,
    required this.title,
  });

  final String imageUrl;
  final int? quantity;
  final int? productValue;
  final String? desc;
  final int? productId;
  final String? title;
  @override
  ConsumerState createState() => _ExchangePointProductWidgetState();
}

class _ExchangePointProductWidgetState
    extends ConsumerState<ExchangePointProductWidget> {
  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        ref.read(addressInfoProvider).getDefaultAddress();
      }
    });

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Widget _buildCard(BuildContext context, AddressInfo? deliveryAddressInfo) {
    if (deliveryAddressInfo == null) {
      return GestureDetector(
        onTap: () {
          pushPage(context, path: PagePath.addressManagerPage, ext: {});
        },
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 15.h),
          decoration: BoxDecoration(
            color: const Color(0xFFCFF1FE).withOpacity(0.05), // 容器背景颜色
            borderRadius: BorderRadius.circular(12.r), // 圆角矩形
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "暂无收获地址",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: AppTheme().wordSecondColor,
                    fontSize: 13.sp,
                    height: 1.2),
                maxLines: 2,
                overflow: TextOverflow.ellipsis, // 描述过长时显示省略号
              ),
              Text(
                "添加地址",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    color: AppTheme().themeBackGroundColor,
                    fontSize: 13.sp,
                    height: 1.2),
                maxLines: 2,
                overflow: TextOverflow.ellipsis, // 描述过长时显示省略号
              ),
            ],
          ),
        ),
      );
    } else {
      return DeliveryAddressInfoCardWidget(info: deliveryAddressInfo);
    }
  }

  @override
  Widget build(BuildContext context) {
    final deliveryAddressInfo = ref.watch(
        addressInfoProvider.select((value) => value.selectDeliveryAddressInfo));
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          children: [
            _buildCard(context, deliveryAddressInfo),
            SizedBox(
              height: 10.h,
            ),
            RoundContainer(
              child: Row(
                children: [
                  netImageCached(widget.imageUrl, width: 40.w, height: 40.w),
                  SizedBox(width: 6.w), // 图片和文字之间的间距
                  // 右侧文字信息部分
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // 商品描述
                        Text(
                          widget.desc ?? '',
                          style: TextStyle(
                              fontWeight: FontWeight.w400,
                              color: AppTheme().wordPrimaryColor,
                              fontSize: 13.sp,
                              height: 1.2),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis, // 描述过长时显示省略号
                        ),
                        SizedBox(height: 10.h), // 间距
                        // 积分和数量信息
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // 积分显示
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "${widget.productValue ?? 0}", // 积分值
                                    style: TextStyle(
                                      color:
                                          AppTheme().wordPrimaryColor, // 积分颜色
                                      fontSize: 19.sp, // 积分字体大小
                                      height: 1.1,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' 积分', // 积分文本
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color:
                                            AppTheme().wordPrimaryColor, // 文本颜色
                                        fontSize: 10.sp,
                                        height: 1.9 // 文本字体大小
                                        ),
                                  ),
                                ],
                              ),
                            ),
                            // 数量
                            Text(
                              'x${widget.quantity}',
                              style: TextStyle(
                                height: 1.1,
                                color: Colors.white54,
                                fontSize: 14.sp,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            GradientButton(
              text: "立即兑换",
              onPressed: (int index) {
                if (deliveryAddressInfo == null) {
                  EasyLoading.showError("请添加收货地址");
                  return;
                }
                showCustomBottomPayPassWordSheet(context, "支付密码", (ping) {},
                    onConfirm: (pwdPay) {
                  EasyLoading.show();
                  exchangePointProduct(
                          pwdPay: pwdPay,
                          name: deliveryAddressInfo.name ?? "",
                          number: widget.quantity ?? 0,
                          phone: deliveryAddressInfo.phone ?? "",
                          productId: widget.productId ?? 0,
                          productName: widget.title ?? "",
                          address: deliveryAddressInfo.address ?? "",
                          location: deliveryAddressInfo.location ?? "")
                      .then((value) {
                    EasyLoading.dismiss();
                    value.ifSuccess((data) {
                      pushPage(context, path: PagePath.exchangeRecodePage);
                    });
                    value.ifFailure((e) {
                      EasyLoading.showError(e.message);
                    });
                  });
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
