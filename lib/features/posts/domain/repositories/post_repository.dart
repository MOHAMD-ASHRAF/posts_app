import 'package:posts_app/features/posts/domain/entities/entity.dart';

abstract class PostsRepository{
  Future<List<Post>> getAllPosts();
  Future<bool> deletePosts(int id);
  Future<bool> upgradePosts(Post post);
  Future<bool> addPosts(Post post);
}