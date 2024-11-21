import 'package:dk_net_work/http_provider/rest_client_utils.dart';
import 'package:dk_net_work/models/link_page_result.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';

class CompanyProfileWidget extends StatefulWidget {
  const CompanyProfileWidget({super.key});

  @override
  State<CompanyProfileWidget> createState() => _CompanyProfileWidgetState();
}

class _CompanyProfileWidgetState extends State<CompanyProfileWidget> {
  ProfileData? profileData;

  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((_) {
      getSinglePage(links: "jianjie").then((value) {
        value.ifSuccess((data) {
          if (mounted) {
            setState(() {
              profileData = data?.data;
            });
          }
        });
      });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (profileData == null) {
      return Center(
          child: CircularProgressIndicator(
        color: AppTheme().themeBackGroundColor,
      ));
    }
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      child: SingleChildScrollView(
        child: HtmlWidget(profileData?.ccontent ?? ""),
      ),
    );
  }
}
