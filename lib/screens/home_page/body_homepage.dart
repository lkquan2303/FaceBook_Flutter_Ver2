import 'package:facebook_flutter_ver2/models/user_model.dart';
import 'package:flutter/material.dart';
import '../../models/story_model.dart';
import 'components/button_social_action.dart';
import 'components/user_online.dart';
import 'components/user_status.dart';
import 'components/user_story.dart';

class BodyHomePage extends StatelessWidget {
  const BodyHomePage({
    Key key,
    @required this.currentUser,
    @required this.usersOnline,
    @required this.stories,
  }) : super(key: key);

  final User currentUser;
  final List<User> usersOnline;
  final List<Story> stories;

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
          ],
        ),
      ),
    );
  }
}
