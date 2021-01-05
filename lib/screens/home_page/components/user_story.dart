import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_flutter_ver2/config/constants.dart';
import 'package:facebook_flutter_ver2/config/size_config.dart';
import 'package:facebook_flutter_ver2/models/story_model.dart';
import 'package:facebook_flutter_ver2/models/user_model.dart';
import 'package:flutter/material.dart';

class UserStory extends StatelessWidget {
  const UserStory({
    Key key,
    @required this.stories,
    @required this.currentUser,
  }) : super(key: key);

  final List<Story> stories;
  final User currentUser;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            stories.length + 1,
            (index) {
              if (index == 0) {
                return Container(
                  margin: const EdgeInsets.symmetric(horizontal: 8.0),
                  height: getProportionateScreenWidth(180),
                  child: StoryCard(
                    currentUser: currentUser,
                    isAddStory: true,
                  ),
                );
              }
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 5.0),
                height: getProportionateScreenWidth(180),
                child: StoryCard(
                  story: stories[index - 1],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class StoryCard extends StatelessWidget {
  final User currentUser;
  final Story story;
  final bool isAddStory;

  const StoryCard({
    Key key,
    this.story,
    this.currentUser,
    this.isAddStory = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: CachedNetworkImage(
            imageUrl: isAddStory ? currentUser.imageUrl : story.imageUrl,
            fit: BoxFit.cover,
            height: double.infinity,
            width: getProportionateScreenWidth(100),
          ),
        ),
        IconStory(
          isAddStory: isAddStory,
          story: story,
        ),
        Positioned(
          bottom: 2,
          left: 8,
          right: 8,
          child: Text(
            isAddStory ? "Add to story" : story.user.name,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}

class IconStory extends StatelessWidget {
  final bool isAddStory;
  final Story story;
  const IconStory({Key key, this.isAddStory, this.story}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 4,
      left: 4,
      child: isAddStory
          ? Container(
              height: getProportionateScreenHeight(45),
              width: getProportionateScreenHeight(45),
              decoration:
                  BoxDecoration(color: Colors.white, shape: BoxShape.circle),
              child: IconButton(
                icon: Icon(Icons.add),
                color: kPrimaryColor,
                iconSize: getProportionateScreenHeight(30),
                onPressed: () {},
              ),
            )
          : Container(
              decoration: BoxDecoration(
                border: Border.all(
                    width: 2.5,
                    color: story.isViewed ? Colors.transparent : Colors.red),
                shape: BoxShape.circle,
              ),
              child: CircleAvatar(
                backgroundImage: CachedNetworkImageProvider(
                  story.user.imageUrl,
                ),
                backgroundColor: Colors.white,
              ),
            ),
    );
  }
}
