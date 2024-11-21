import 'package:common_utils/common_utils.dart';
import 'package:dk_utils/dk_lib.dart';
import 'package:flutter/material.dart';
import 'package:media_kit_video/media_kit_video.dart';

class VideoWidget extends StatefulWidget {
  const VideoWidget({super.key, this.videoUrl});
  final String? videoUrl;
  @override
  State<VideoWidget> createState() => _VideoWidgetState();
}

class _VideoWidgetState extends State<VideoWidget> {
  late final player = Player();
  late final controller = VideoController(player);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Video(
        controller: controller,
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    if (mounted) {
      if (!TextUtil.isEmpty(widget?.videoUrl)) {
        player.open(Media(widget?.videoUrl ?? ""));
      }
      setState(() {});
    }
    super.initState();
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }
}
