import 'package:churn/components/sign_in_up_container.dart';
import 'package:flutter/cupertino.dart';

import '../widgets/reset_password_view.dart';

class ResetPswPage extends StatelessWidget {
  const ResetPswPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SignInUpContainer(
      child: ResetPasswordView(),
    );
  }
}
