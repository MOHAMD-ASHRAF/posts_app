import 'package:dartz/dartz.dart';
import 'package:posts_app/features/posts/data/models/post_model.dart';

abstract class LocalDataSource {
Future<List<PostModel>> getCachePosts();
Future<Unit> cachePosts(List<PostModel> postModel);
}

class  LocalDataSourceImpl implements LocalDataSource{
  @override
  Future<Unit> cachePosts(List<PostModel> postModel) {
    // TODO: implement cachePosts
    throw UnimplementedError();
  }

  @override
  Future<List<PostModel>> getCachePosts() {
    // TODO: implement getCachePosts
    throw UnimplementedError();
  }
}

