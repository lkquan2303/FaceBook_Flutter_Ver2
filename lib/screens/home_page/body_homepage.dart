import 'package:flutter/material.dart';
import 'package:facebook_flutter_ver2/models/user_model/post_model.dart';
import 'package:facebook_flutter_ver2/models/user_model/user_model.dart';
import '../../models/user_model/story_model.dart';
import 'components/button_social_action.dart';
import 'components/user_online.dart';
import 'components/user_post.dart';
import 'components/user_status.dart';
import 'components/user_story.dart';

class BodyHomePage extends StatelessWidget {
  const BodyHomePage({
    Key key,
    @required this.currentUser,
    @required this.usersOnline,
    @required this.stories,
    @required this.posts,
  }) : super(key: key);

  final User currentUser;
  final List<User> usersOnline;
  final List<Story> stories;
  final List<Post> posts;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        child: Column(
          children: [
            UserStatus(currentUser: currentUser),
            const SizedBox(height: 5.0),
            ButtonSocialAction(),
            const SizedBox(height: 5.0),
            OnlineUser(usersOnline: usersOnline),
            const SizedBox(height: 5.0),
            UserStory(stories: stories, currentUser: currentUser),
            const SizedBox(height: 8.0),
            UserPost(post: posts)
          ],
        ),
      ),
    );
  }
}
