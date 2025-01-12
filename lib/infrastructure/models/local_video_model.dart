import 'package:fl_tiktok/domain/entities/video_post.dart';

class LocalVideoModel {
  String caption;
  String videoUrl;
  int likes;
  int views;

  LocalVideoModel(
      {required this.caption,
      required this.videoUrl,
      this.likes = 0,
      this.views = 0});

  factory LocalVideoModel.fromJsonMap(Map<String, dynamic> json) =>
      LocalVideoModel(
          caption: json['name'] ?? 'Undefined',
          videoUrl: json['videoUrl'] ?? 'Undefined',
          likes: json['likes'] ?? 0,
          views: json['views'] ?? 0);

  VideoPost toLocalVideoEntity() => VideoPost(
      caption: caption, videoUrl: videoUrl, likes: likes, views: views);
}
