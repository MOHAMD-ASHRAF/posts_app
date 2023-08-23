import 'package:flutter/material.dart';
import 'package:posts_app/features/posts/domain/entities/entity.dart';

class PostListWidget extends StatelessWidget {
  final List<Post> posts;

  const PostListWidget({Key? key, required this.posts}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
              leading: Text(posts[index].id.toString()),
              title: Text(
                posts[index].title.toString(),
                style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                posts[index].body.toString(),
                style: const TextStyle(fontSize: 16),
              ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            onTap: (){

            },
          );
        },
        separatorBuilder: (context, index)=> const Divider(thickness: 1,),
        itemCount: posts.length);
  }
}
