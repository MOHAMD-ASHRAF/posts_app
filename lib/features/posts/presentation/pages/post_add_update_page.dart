import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:posts_app/core/util/snakbar_message.dart';
import 'package:posts_app/core/widget/loading_widget.dart';
import 'package:posts_app/features/posts/domain/entities/entity.dart';
import 'package:posts_app/features/posts/presentation/bloc/add_delete_update_post/add_delete_update_post_bloc.dart';
import 'package:posts_app/features/posts/presentation/pages/posts_page.dart';
import 'package:posts_app/features/posts/presentation/widgets/form_widget.dart';

class PostAddUpdatePage extends StatelessWidget {
  const PostAddUpdatePage({Key? key, this.post, required this.isUpdatePost})
      : super(key: key);
  final Post? post;
  final bool isUpdatePost;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(context),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text(isUpdatePost ? 'updatePost' : 'Add post'),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Center(
      child: Padding(
          padding: const EdgeInsets.all(10),
          child:
              BlocConsumer<AddDeleteUpdatePostBloc, AddDeleteUpdatePostState>(
            listener: (context, state) {
              if (state is MessageDeleteUpdatePostState) {
                SnackBarMessage().showSuccessSnackBar(message: state.message, context: context);
                Navigator.of(context).pushAndRemoveUntil(
                    MaterialPageRoute(builder: (_) => const PostsPage()),
                    (route) => false);
               }else if(state is ErrorDeleteUpdatePostState){
                SnackBarMessage().showErrorSnackBar(message: state.message, context: context);
              }
              },
               builder: (context, state) {
              if (state is LoadingAddDeleteUpdatePostState) {
                return const LoadingWidget();
              }
              return FormWidget(
                  isUpdatePost: isUpdatePost, post: isUpdatePost ? post : null);
            },
          )),
    );
  }
}
