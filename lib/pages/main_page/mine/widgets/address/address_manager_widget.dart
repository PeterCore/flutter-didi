import 'dart:convert';

import 'package:churn/assets_tool/ui_assets.dart';
import 'package:churn/components/pay_psw_sheet.dart';
import 'package:churn/pages/main_page/mine/logic/address_info_provider.dart';
import 'package:churn/router_config.dart';
import 'package:dk_utils/components/gradient_button.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'address_info_card_widget.dart';

class AddressManagerWidget extends ConsumerStatefulWidget {
  final String? isPick;
  const AddressManagerWidget({super.key, this.isPick});

  @override
  ConsumerState createState() => _AddressManagerWidgetState();
}

class _AddressManagerWidgetState extends ConsumerState<AddressManagerWidget> {
  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(addressInfoProvider).fetchAddressList();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final addProv = ref.watch(addressInfoProvider);
    final addressList =
        ref.watch(addressInfoProvider.select((value) => value.addressList));
    return Stack(
      children: [
        addressList.isEmpty
            ? Align(
                alignment: Alignment.topCenter,
                child: Padding(
                    padding: EdgeInsets.only(top: 110.h),
                    child: AppLocalImage(
                      path: UIAssets.source!.icEmpty,
                      width: 220.w,
                      height: 220.w,
                    )),
              )
            : ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 12.h),
                itemCount: addressList.length,
                itemBuilder: (context, index) {
                  return AddressInfoCardWidget(
                    info: addressList[index],
                    onOperatorCard: (proId, type) {
                      if (type == OperatorCard.setDefault) {
                        addProv.setDefaultAddressInfo(id: "$proId");
                      } else if (type == OperatorCard.delete) {
                        showCustomBottomPayPassWordSheet(
                            context, "支付密码", (pin) {}, onConfirm: (pwdPay) {
                          addProv.deleteAddressInfo(
                              pwdPay: pwdPay, id: "$proId");
                        });
                      } else if (type == OperatorCard.edit) {
                        final addInfo = addressList
                            .where((e) => e.id == proId)
                            .toList()
                            .first;

                        String infoStr = json.encode(addInfo.toJson());
                        // addressInfo
                        pushPage(context,
                            path: PagePath.editAddressPage,
                            ext: {"addressInfo": infoStr});
                      } else if (type == OperatorCard.delivery) {
                        final router = GoRouter.of(context);
                        final routers =
                            router.routerDelegate.currentConfiguration.matches;
                        bool isPickAddress = false;
                        for (var routeMatchBase in routers) {
                          String currentPathName =
                              getFirstPathPart(routeMatchBase.matchedLocation);
                          if (PagePath.exchangePointProductPage ==
                              currentPathName) {
                            isPickAddress = true;
                            break;
                          }
                        }
                        if (isPickAddress == true) {
                          addProv.pickWithId(id: proId);
                          context.pop();
                        }

                        // 通过路由控制选择
                        if (widget.isPick == "true") {
                          context.pop(proId);
                        }
                      }
                    },
                  );
                },
              ),
        Positioned(
            left: 15.w,
            bottom: 15.h,
            right: 15.w,
            child: GradientButton(
              text: "新建收货地址",
              onPressed: (int index) {
                pushPage(context, path: PagePath.editAddressPage, ext: {});
              },
            ))
      ],
    );

    return addressList.isEmpty
        ? const Center(
            child: Text(
              '暂无地址',
              style: TextStyle(color: Colors.white),
            ),
          )
        : ListView.builder(
            padding: const EdgeInsets.all(16),
            itemCount: addressList.length,
            itemBuilder: (context, index) {
              return AddressInfoCardWidget(
                info: addressList[index],
              );
            },
          );
  }
}
