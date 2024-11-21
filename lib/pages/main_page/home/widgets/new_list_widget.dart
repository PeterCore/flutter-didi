import 'package:churn/pages/main_page/home/widgets/news_cell.dart';
import 'package:dk_net_work/models/new_list_result_model.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

import '../logic/home_manager.dart';

class NewListWidget extends StatefulWidget {
  const NewListWidget({super.key});

  @override
  State<NewListWidget> createState() => _NewListWidgetState();
}

class _NewListWidgetState extends State<NewListWidget> {
  List<Articlescategory> news = [];

  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_) {
      HomeManager.fetchNewListMsg(onSuccess: (value) {
        if (mounted) {
          setState(() {
            news = value.data ?? [];
          });
        }
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (news.isEmpty == null) {
      return Center(
          child: CircularProgressIndicator(
        color: AppTheme().themeBackGroundColor,
      ));
    }
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: ListView.builder(
        itemCount: news.length,
        itemBuilder: (context, index) {
          final item = news[index];
          return NewsCell(
            model: item,
          );
        },
      ),
    );
  }
}
