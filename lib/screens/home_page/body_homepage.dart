import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_flutter_ver2/models/user_model.dart';
import 'package:flutter/material.dart';
import '../../config/size_config.dart';
import '../../models/story_model.dart';
import 'components/button_social_action.dart';
import 'components/online_user.dart';
import 'components/user_status.dart';

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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  stories.length + 1,
                  (index) {
                    // if (index == 0) {
                    //   return Container(
                    //     margin: const EdgeInsets.symmetric(horizontal: 8.0),
                    //     height: 200,
                    //     child: StoryCard(
                    //       currentUser: currentUser, story: stories[index],
                    //     ),
                    //   );
                    // }
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8.0),
                      height: getProportionateScreenWidth(160),
                      child: StoryCard(
                        currentUser: currentUser,
                        //  story: stories[index],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class StoryCard extends StatelessWidget {
  final User currentUser;
  final Story story;
  final bool isAddStory;

  const StoryCard({Key key, this.currentUser, this.story, this.isAddStory})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: CachedNetworkImage(
            imageUrl: currentUser.imageUrl,
            fit: BoxFit.cover,
            height: double.infinity,
            width: getProportionateScreenWidth(100),
          ),
        ),
      ],
    );
  }
}
