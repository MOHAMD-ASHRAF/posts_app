import 'package:dartz/dartz.dart';
import 'package:posts_app/core/error/failure.dart';
import 'package:posts_app/features/posts/domain/entities/entity.dart';
import 'package:posts_app/features/posts/domain/repositories/post_repository.dart';

class GetAllPostsUseCase{
  final PostsRepository postsRepository;

  GetAllPostsUseCase(this.postsRepository);

  Future<Either<Failure,List<Post>>>call()async{
    return await postsRepository.getAllPosts();
  }
}