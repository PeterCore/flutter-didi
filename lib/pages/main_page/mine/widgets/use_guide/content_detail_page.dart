import 'package:churn/pages/main_page/mine/widgets/use_guide/content_detail_widget.dart';
import 'package:churn/pages/main_page/mine/widgets/use_guide/video_widget.dart';
import 'package:flutter/material.dart';

import '../../../../../assets_tool/ui_assets.dart';
import '../../../../../components/black_styles_container.dart';

class ContentDetailPage extends StatelessWidget {
  const ContentDetailPage(
      {super.key,
      required this.title,
      required this.id,
      required this.videoUrl});
  final String title;
  final String id;
  final String videoUrl;
  @override
  Widget build(BuildContext context) {
    return BlackStylesContainer(
        title: title,
        backgroundPath: UIAssets.source!.bg2,
        child: _build(title: title, id: id, videoUrl: videoUrl));
  }

  Widget _build({String title = "", String id = "", String videoUrl = ""}) {
    if (id.isNotEmpty) {
      return ContentDetailWidget(
        id: id,
      );
    } else if (videoUrl.isNotEmpty) {
      return VideoWidget(
        videoUrl: videoUrl,
      );
    }

    return Container();
  }
}
