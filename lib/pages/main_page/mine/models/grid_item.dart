import 'dart:ui';

class GridItem {
  final String title;
  final String iconPath;
  final String id;
  final bool isNeedReal;
  Color? backgroundColor;
  final Function(String id) onClick;
  GridItem(
      {required this.title,
      required this.iconPath,
      this.backgroundColor,
      required this.id,
      required this.isNeedReal,
      required this.onClick});
}
