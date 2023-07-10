import 'package:dartz/dartz.dart';
import 'package:posts_app/core/error/failure.dart';
import 'package:posts_app/features/posts/domain/entities/entity.dart';
import 'package:posts_app/features/posts/domain/repositories/post_repository.dart';

class AddPostUseCase{
  PostsRepository postsRepository;
  AddPostUseCase(this.postsRepository);

  Future<Either<Failure, Unit>> call(Post post) async {
    return await postsRepository.addPosts(post);
  }
}