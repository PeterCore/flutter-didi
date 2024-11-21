import 'package:churn/components/sign_in_up_container.dart';
import 'package:flutter/cupertino.dart';

import '../views/sign_in_view.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SignInUpContainer(
      child: SignInView(),
    );
  }
}
