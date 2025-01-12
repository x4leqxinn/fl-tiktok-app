import 'package:fl_tiktok/domain/datasources/video_post_datasource.dart';
import 'package:fl_tiktok/domain/entities/video_post.dart';
import 'package:fl_tiktok/infrastructure/models/local_video_model.dart';
import 'package:fl_tiktok/shared/data/local_video_post.dart';

class LocalVideoDatasourceImpl implements VideoPostDatasource {
  @override
  Future<List<VideoPost>> getFavouriteVideoByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts
        .map((video) => LocalVideoModel.fromJsonMap(video).toLocalVideoEntity())
        .toList();

    return newVideos;
  }
}
