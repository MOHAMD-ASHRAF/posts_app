import 'package:dartz/dartz.dart';
import 'package:posts_app/core/error/failure.dart';
import 'package:posts_app/features/posts/domain/entities/entity.dart';

abstract class PostsRepository{
  Future<Either<Failure,List<Post>>> getAllPosts();
  Future<Either<Failure,Unit>> deletePosts(int id);
  Future<Either<Failure,Unit>> upgradePosts(Post post);
  Future<Either<Failure,Unit>> addPosts(Post post);
}