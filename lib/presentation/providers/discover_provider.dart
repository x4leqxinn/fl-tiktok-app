import 'package:fl_tiktok/domain/entities/video_post.dart';
import 'package:fl_tiktok/domain/repositories/video_post_repository.dart';
import 'package:flutter/material.dart';

class DiscoverProvider extends ChangeNotifier {
  final VideoPostRepository videosRepository;

  bool initialLoading = true;
  List<VideoPost> videos = [];

  DiscoverProvider({required this.videosRepository});

  Future<void> loadNextPage() async {
    final newVideos = await videosRepository.getTrendingVideosByPage(1);

    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
