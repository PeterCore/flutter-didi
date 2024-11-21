import 'package:churn/assets_tool/ui_assets.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

import '../../../../../router_config.dart';
import '../../logic/userInfo_controller.dart';
import 'bind_card_widget.dart';

class WithdrawsManagerWidget extends StatefulWidget {
  const WithdrawsManagerWidget({super.key});

  @override
  State<WithdrawsManagerWidget> createState() => _WithdrawsManagerWidgetState();
}

class _WithdrawsManagerWidgetState extends State<WithdrawsManagerWidget> {
  List<PaymentCard> cardList = [];
  UserInfoController userInfoController = UserInfoController();
  void initData() {
    PaymentCard walletCard = PaymentCard(
        isBind: false,
        mark: "添加USDT",
        type: PaymentCardType.dexWallet,
        cardNo: "",
        cardName: "",
        imagePath: UIAssets.source!.usdt,
        onClick: (type) async {
          final Object? refresh =
              await pushPage(context, path: PagePath.editWalletPage);
          if (refresh == true) {
            userInfoController.getUserInfo();
          }
        });
    cardList.add(walletCard);
    PaymentCard bankCard = PaymentCard(
        isBind: false,
        mark: "添加银行卡",
        type: PaymentCardType.bank,
        cardNo: "",
        cardName: "",
        imagePath: UIAssets.source!.icBankO,
        onClick: (type) async {
          final Object? refresh =
              await pushPage(context, path: PagePath.editBankPage);
          if (refresh == true) {
            userInfoController.getUserInfo();
          }
        });
    cardList.add(bankCard);
    PaymentCard zfBCard = PaymentCard(
        isBind: false,
        mark: "添加支付宝",
        type: PaymentCardType.zhiFuBao,
        cardNo: "",
        cardName: "",
        imagePath: UIAssets.source!.iczfb,
        onClick: (type) async {
          final Object? refresh =
              await pushPage(context, path: PagePath.editZhiFuBaoPage);
          if (refresh == true) {
            userInfoController.getUserInfo();
          }
        });
    cardList.add(zfBCard);
  }

  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_) {
      initData();
      userInfoController.getUserInfo();
      userInfoController.addListener(_onKycChange);
    });
    super.initState();
  }

  void _onKycChange() {
    if (mounted) {
      final data = userInfoController.userInfoModel.data;
      setState(() {
        cardList[0].cardNo = data?.usdtadr ?? "";
        cardList[0].isBind = data?.isusdt == 1;
        cardList[0].isVisible = data?.istxusdt == 1;
        cardList[0].cardName = data?.usdtlian ?? "";

        cardList[1].cardNo = data?.bankcode ?? "";
        cardList[1].isBind = data?.isbank == 1;
        cardList[1].isVisible = data?.isyhk == 1;
        cardList[1].cardName = data?.bankname ?? "";

        cardList[2].cardNo = data?.email ?? "";
        cardList[2].isBind = data?.isalipay == 1;
        cardList[2].isVisible = data?.iszfb == 1;
        cardList[2].cardName = "支付宝";
      });
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    userInfoController.removeListener(_onKycChange);
    super.dispose();
  }

  List<Widget> _buildCards() {
    List<Widget> list = [];
    for (PaymentCard cardItem in cardList) {
      PaymentCardContainer container = PaymentCardContainer(cardItem: cardItem);
      list.add(container);
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: _buildCards(),
      ),
    );
  }
}
