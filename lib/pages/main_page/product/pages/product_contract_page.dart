import 'package:flutter/material.dart';
import '../../../../components/common_contract_widget.dart';
import 'package:churn/components/black_styles_container.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../logic/product_contract_controller.dart';
import '../../../../../components/pay_psw_sheet.dart';
import 'package:churn/pages/main_page/product/logic/product_normal_records_controller.dart';
import 'package:dk_utils/dk_lib.dart';
class ProductContractPage extends ConsumerStatefulWidget {
  final Map<String, dynamic> data;
  const ProductContractPage(
      {super.key, required this.data});

  @override
  ConsumerState<ProductContractPage> createState() =>
      _ProductContractPageState();
}

class _ProductContractPageState extends ConsumerState<ProductContractPage> {
  final _pageStorageKey = const PageStorageKey<String>('product_contract_scroll');
  @override
  Widget build(BuildContext context) {
    final type = widget.data['type'] ?? 'buy';
    final isSign = widget.data['sign'] ?? true;
    final state = ref.watch(productContractProvider((widget.data, type)));
    final normalRecordController = ref.read(productNormalRecordsControllerProvider.notifier);
    
    return BlackStylesContainer(
      title: '合同详情',
      child: CommonContractWidget(
        key: _pageStorageKey,
        data: state.content ?? "",
        isSignature: isSign,
        onConfirm: (signatureUrl) {
          if (type == 'sign') {
            showCustomBottomPayPassWordSheet(context, "请输入支付密码", (pwd) {
              // controller.handlePay(context, pwd, type);
            }, onConfirm: (pwd) {
              if(pwd.isEmpty || pwd.length < 6) {
                EasyLoading.showError("支付密码不能为空且不能小于6位");
                return;
              }
              normalRecordController.signContract(context, id: widget.data['contract_no'], pwdPay: pwd, signImg: signatureUrl);
            });
          } else {
            Navigator.of(context).pop(signatureUrl);
          }
        },
      ),
    );
  }
}
