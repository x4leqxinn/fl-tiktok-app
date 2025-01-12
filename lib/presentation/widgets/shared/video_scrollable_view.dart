import 'package:fl_tiktok/domain/entities/video_post.dart';
import 'package:fl_tiktok/presentation/widgets/shared/video_buttons.dart';
import 'package:fl_tiktok/presentation/widgets/video/fullscreen_player.dart';
import 'package:flutter/material.dart';

class VideoScrollableView extends StatelessWidget {
  final List<VideoPost> videos;

  const VideoScrollableView({super.key, required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final videoPost = videos[index];
        return Stack(
          children: [
            // Video player + gradiente
            SizedBox.expand(
                child: FullscreenPlayer(
              caption: videoPost.caption,
              videoUrl: videoPost.videoUrl,
            )),
            // Botones
            Positioned(
                bottom: 40, right: 20, child: VideoButtons(video: videoPost))
          ],
        );
      },
    );
  }
}
