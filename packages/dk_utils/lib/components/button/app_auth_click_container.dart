import 'package:flutter/material.dart';

class AppAuthClickContainer extends StatelessWidget {
  const AppAuthClickContainer(
      {super.key, this.child, this.onClick, this.onAuth});
  final Widget? child;
  final Function(bool auth)? onClick;
  final bool Function()? onAuth;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: child,
      onTap: () {
        bool? auth = onAuth?.call();
        onClick?.call(auth == true);
      },
    );
  }
}
