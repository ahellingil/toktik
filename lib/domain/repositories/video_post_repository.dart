import 'package:toktik/domain/entities/video_post.dart';

abstract interface class IVideoPostRepository {
  Future<List<VideoPost>> getTrendingVideosByPage(int page);
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID);
}
