import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_flutter_ver2/config/size_config.dart';
import 'package:facebook_flutter_ver2/models/post_model.dart';
import 'package:facebook_flutter_ver2/screens/home_page/components/user_post/user_post_action.dart';
import 'package:facebook_flutter_ver2/screens/home_page/components/user_post/user_post_header_caption.dart';
import 'package:facebook_flutter_ver2/screens/home_page/components/user_post/user_post_interaction.dart';
import 'package:flutter/material.dart';

class UserPost extends StatefulWidget {
  final List<Post> post;

  const UserPost({Key key, @required this.post}) : super(key: key);
  @override
  _UserPostState createState() => _UserPostState();
}

class _UserPostState extends State<UserPost> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: List.generate(
          widget.post.length,
          (index) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
              color: Colors.white,
              child: Column(
                children: [
                  UserHeaderCaption(post: widget.post[index]),
                  Container(
                    height: getProportionateScreenWidth(
                        widget.post[index].imageUrl == null ? 0 : 300),
                    child: CachedNetworkImage(
                      imageUrl: widget.post[index].imageUrl == null ? "" : widget.post[index].imageUrl,
                      fit: BoxFit.fill,
                    ),
                  ),
                  //MARK: User Interact
                  UserInteraction(post: widget.post[index]),
                  const Divider(height: 6.0),
                  //MARK: POST USER ACTION: Like, Comments, Share
                  UserAction(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
