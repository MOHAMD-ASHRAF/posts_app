import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:posts_app/core/widget/loading_widget.dart';
import 'package:posts_app/features/posts/presentation/bloc/posts/posts_bloc.dart';
import 'package:posts_app/features/posts/presentation/widgets/message_disply_widget.dart';
import 'package:posts_app/features/posts/presentation/widgets/post_list_widget.dart';


class PostsPage extends StatelessWidget {
  const PostsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('posts app')),
      body:  _buildBody(),floatingActionButton: _buildFloatingBtn(),);
  }
  Widget _buildBody(){
    return Padding(
      padding: const EdgeInsets.all(10),
      child: BlocBuilder<PostsBloc, PostsState>(builder: (context, state) {
        if (state is LoadingPostsState) {
          return const LoadingWidget();
        } else if (state is LoadedPostsState) {
          return RefreshIndicator(
              onRefresh: ()=> _onRefresh(context),
              child: PostListWidget(posts: state.posts));
        } else if (state is ErrorPostsState) {
          return MessageDisplayWidget(
            message: state.message,
          );
        }
        return const LoadingWidget();
      }),
    );
  }


 Future<void> _onRefresh(BuildContext context)async{
    BlocProvider.of<PostsBloc>(context).add(RefreshPostsEvent());
  }
  Widget _buildFloatingBtn() {
    return FloatingActionButton(
        onPressed: () {},
    child: Icon(Icons.add),
    );
  }
}