import 'package:churn/router_config.dart';
import 'package:dk_net_work/http_provider/rest_client_utils.dart';
import 'package:dk_net_work/models/point_product_detail_model.dart';
import 'package:dk_utils/components/gradient_button.dart';
import 'package:dk_utils/components/image/net_image_cached.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

class PointProductDetailWidget extends StatefulWidget {
  const PointProductDetailWidget({
    super.key,
    required this.myPoint,
    required this.productId,
  });
  final int myPoint;
  final int productId;
  @override
  State<PointProductDetailWidget> createState() =>
      _PointProductDetailWidgetState();
}

class _PointProductDetailWidgetState extends State<PointProductDetailWidget> {
  PointProductDetailModel? detail;
  int quantity = 1;

  @override
  void initState() {
    // TODO: implement initState
    getPointProductDetail(productId: widget.productId).then((value) {
      value.ifSuccess((data) {
        if (mounted) {
          setState(() {
            detail = data;
          });
        }
      });
      value.ifFailure((e) {});
    });

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (detail == null) {
      return Center(
          child: CircularProgressIndicator(
        color: AppTheme().themeBackGroundColor,
      ));
    }
    return SingleChildScrollView(
      child: Column(
        children: [
          AspectRatio(
              aspectRatio: 1.0,
              child: netImageCached(detail?.product?.image ?? "", radius: 0)),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 11.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 积分与商品信息
                RoundContainer(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 使用Row实现“78积分”和“我的积分”同行
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // 78 积分多文本
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "${detail?.product?.integral ?? 0}",
                                  style: TextStyle(
                                    color:
                                        AppTheme().themeBackGroundColor, // 数字颜色
                                    fontSize: 30.sp, // 字体较大
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                TextSpan(
                                  text: ' 积分',
                                  style: TextStyle(
                                      color: AppTheme()
                                          .themeBackGroundColor, // 积分文本颜色
                                      fontSize: 10.sp,
                                      height: 1.2),
                                ),
                              ],
                            ),
                          ),
                          // 我的积分
                          Text(
                            '我的积分 ${widget.myPoint}',
                            style: TextStyle(
                                color: AppTheme().wordSecondColor,
                                fontSize: 11.sp,
                                height: 1.2,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      SizedBox(height: 8.h),
                      // 商品信息
                      Text(
                        detail?.product?.descr ?? "",
                        style: TextStyle(
                          color: AppTheme().wordPrimaryColor, // 数字颜色
                          fontSize: 16.sp, // 字体较大
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 19.h),
                // 兑换数量
                Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 11.w, vertical: 9.h),
                  decoration: BoxDecoration(
                    color: AppTheme().roundContainerColor,
                    borderRadius: BorderRadius.circular(6.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '兑换数量',
                        style: TextStyle(
                            color: AppTheme().wordPrimaryColor,
                            fontSize: 15.sp,
                            fontWeight: FontWeight.w500,
                            height: 1.4),
                      ),
                      Row(
                        children: [
                          // 减少按钮
                          IconButton(
                            icon: Icon(Icons.remove,
                                color: AppTheme().wordPrimaryColor),
                            onPressed: () {
                              setState(() {
                                if (quantity > 1) quantity--;
                              });
                            },
                          ),
                          SizedBox(
                            width: 11.w,
                          ),
                          // 数量显示
                          Text(
                            '$quantity',
                            style: TextStyle(
                                color: AppTheme().wordPrimaryColor,
                                fontSize: 18.sp),
                          ),
                          // 增加按钮
                          SizedBox(
                            width: 11.w,
                          ),

                          IconButton(
                            icon: Icon(Icons.add,
                                color: AppTheme().wordPrimaryColor),
                            onPressed: () {
                              setState(() {
                                quantity++;
                              });
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.h),
                // 兑换规则部分
                Text(
                  '兑换规则',
                  style: TextStyle(
                      color: AppTheme().wordPrimaryColor,
                      height: 1.4,
                      fontWeight: FontWeight.w400,
                      fontSize: 15.sp),
                ),
                SizedBox(height: 8.h),
                Text(
                  detail?.ruleArea ?? "",
                  style: TextStyle(
                      color: AppTheme().wordSecondColor,
                      height: 1.3,
                      fontWeight: FontWeight.w400,
                      fontSize: 13.sp),
                ),
                SizedBox(height: 16.h),
                // 商品信息部分
                Text(
                  '商品信息',
                  style: TextStyle(
                      color: AppTheme().wordPrimaryColor,
                      height: 1.4,
                      fontWeight: FontWeight.w400,
                      fontSize: 15.sp),
                ),
                SizedBox(height: 8.h),
                HtmlWidget(detail?.product?.content ?? ""),
                SizedBox(
                  height: 34.h,
                ),
                GradientButton(
                  text: "立即兑换",
                  onPressed: (int index) {
                    // final String imageUrl;
                    // final int? quantity;
                    // final int? productValue;
                    // final String? desc;
                    // final int? productId;
                    pushPage(context,
                        path: PagePath.exchangePointProductPage,
                        ext: {
                          "imageUrl": detail?.product?.image ?? "",
                          "quantity": quantity,
                          "productValue": detail?.product?.integral ?? 0,
                          "desc": detail?.product?.descr ?? "",
                          "productId": widget.productId,
                          "title": detail?.product?.title ?? ""
                        });
                    // getUserDefaultAddressInfo(productId: widget.productId)
                    //     .then((value) {
                    //   value.ifSuccess((data) {});
                    //   value.ifFailure((e) {
                    //     print("---${e.code} ,${e.message}---");
                    //   });
                    // });
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
