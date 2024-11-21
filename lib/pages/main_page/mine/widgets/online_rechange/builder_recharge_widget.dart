import 'package:churn/pages/main_page/mine/widgets/online_rechange/bank_recharge_widget.dart';
import 'package:churn/pages/main_page/mine/widgets/online_rechange/online_chain_recharge_widget.dart';
import 'package:churn/pages/main_page/mine/widgets/online_rechange/online_customer_server_widget.dart';
import 'package:churn/pages/main_page/mine/widgets/online_rechange/wallet_address_recharge_widget.dart';
import 'package:dk_net_work/models/online_recharge_type_model.dart';
import 'package:flutter/cupertino.dart';

class BuilderRechargeWidget {
  static Widget buildRechargeWidget(Payment? payment,
      {double conversionRate = 7.2, String walletAddress = ''}) {
    if (payment?.payCode == "kehuchong") {
      return OnlineCustomerServerWidget(
        payment: payment,
      );
    } else if (payment?.payCode == "UsdtPay") {
      return OnlineChainRechargeWidget(
        payment: payment,
        conversionRate: conversionRate,
      );
    } else if (payment?.payCode == "ChinaPay") {
      return BankRechargeWidget(
        payment: payment,
        conversionRate: conversionRate,
      );
    } else if (payment?.payCode == "zxusdt") {
      return WalletAddressRechargeWidget(
          payment: payment, walletAddress: walletAddress);
    }

    return Container();
  }
}
