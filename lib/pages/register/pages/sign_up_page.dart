import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../components/sign_in_up_container.dart';
import '../widgets/sign_up_view.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SignInUpContainer(
      top: 100.h,
      child: const SignUpView(),
    );
  }
}
