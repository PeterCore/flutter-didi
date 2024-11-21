import 'package:dk_net_work/http_provider/rest_client_utils.dart';
import 'package:dk_net_work/models/point_product_model.dart';
import 'package:dk_utils/components/image/net_image_cached.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatefulWidget {
  const ProductWidget({super.key, this.sortId = 0, this.onSelected});
  final int sortId;
  final Function(int productId)? onSelected;

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget>
    with AutomaticKeepAliveClientMixin {
  List<ProductItem> productData = []; //
  @override
  void initState() {
    // TODO: implement initState
    getPointProduct(sortid: widget.sortId).then((value) {
      value.ifSuccess((data) {
        if (mounted) {
          setState(() {
            productData = data.list?.data ?? [];
          });
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return EasyRefresh(
      header: Constants().refreshHeader,
      onRefresh: () async {
        getPointProduct(sortid: widget.sortId).then((value) {
          value.ifSuccess((data) {
            if (mounted) {
              setState(() {
                productData = data.list?.data ?? [];
              });
            }
          });
        });
      },
      child: GridView.builder(
        key: PageStorageKey(widget.sortId), // 使用 PageStorageKey 保持滚动状态
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, // 每行两个商品
          crossAxisSpacing: 5,
          mainAxisSpacing: 11.sp,
          childAspectRatio: 163 / 230, // 调整商品图片的宽高比
        ),
        itemCount: productData.length, // 产品数量
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              widget.onSelected?.call(productData[index].id ?? 0);
              //getPointProductDetail(productId: productData[index].id ?? 0);
            },
            child: AnimationConfiguration.staggeredGrid(
              position: index,
              columnCount: 2,
              duration: const Duration(milliseconds: 375),
              child: ScaleAnimation(
                scale: 0.5,
                child: FadeInAnimation(
                  child: Card(
                    clipBehavior: Clip.antiAlias,
                    color: AppTheme().roundContainerColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AspectRatio(
                          aspectRatio: 1,
                          child: netImageCached(
                            productData[index].image ?? "",
                            radius: 0,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                productData[index].title ?? "", // 显示分类下的商品名称
                                style: TextStyle(
                                    color: AppTheme().wordPrimaryColor,
                                    fontSize: 14.sp),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(
                                height: 10.h,
                              ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text:
                                          "${productData[index]?.integral ?? 0}",
                                      style: TextStyle(
                                        color: AppTheme()
                                            .themeBackGroundColor, // 数字为蓝色
                                        fontSize: 19.sp,
                                        height: 1.3, // 字体较大
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                    TextSpan(
                                      text: ' 积分',
                                      style: TextStyle(
                                          color: AppTheme()
                                              .themeBackGroundColor, // 保持默认颜色
                                          fontSize: 11.sp,
                                          height: 1.1,
                                          fontWeight: FontWeight.w400 // 字体较小
                                          ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 5.h,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}
