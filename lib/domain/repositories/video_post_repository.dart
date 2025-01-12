import 'package:fl_tiktok/domain/entities/video_post.dart';

abstract class VideoPostRepository {
  Future<List<VideoPost>> getTrendingVideosByPage(int page);
  Future<List<VideoPost>> getFavouriteVideoByUser(String userID);
}
