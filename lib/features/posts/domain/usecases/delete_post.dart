import 'package:dartz/dartz.dart';
import 'package:posts_app/core/error/failure.dart';
import 'package:posts_app/features/posts/domain/repositories/post_repository.dart';

class DeletePostUseCase {
  final PostsRepository postsRepository;

  DeletePostUseCase(this.postsRepository);

  Future<Either<Failure, Unit>> call(int postId) async {
    return await postsRepository.deletePosts(postId);
  }
}
