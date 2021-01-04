import 'package:facebook_flutter_ver2/models/user_model.dart';
import 'package:flutter/material.dart';
import '../../config/constants.dart';
import '../../config/constants.dart';
import '../../config/size_config.dart';
import 'components/button_social_action.dart';
import 'components/profile_avatar.dart';
import 'components/user_status.dart';

class BodyHomePage extends StatelessWidget {
  const BodyHomePage({
    Key key,
    @required this.currentUser,
    @required this.usersOnline,
  }) : super(key: key);

  final User currentUser;
  final List<User> usersOnline;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Container(
        child: Column(
          children: [
            UserStatus(currentUser: currentUser),
            Divider(height: 4.0),
            ButtonSocialAction(),
            const SizedBox(height: 5.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: getProportionateScreenWidth(6),
                    horizontal: getProportionateScreenWidth(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: List.generate(usersOnline.length, (index) {
                      if (index == 0) {
                        return CreateRoomButton();
                      }
                      return Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(5),
                          vertical: getProportionateScreenHeight(4),
                        ),
                        child: Container(
                          child: ProfileAvatar(
                            imgUrl: usersOnline[index].imageUrl,
                            isActive: false,
                          ),
                        ),
                      );
                    }),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CreateRoomButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlineButton(
      onPressed: () {},
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
      color: Colors.white,
      borderSide: BorderSide(width: 3.0, color: kPrimaryColor),
      textColor: kPrimaryColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ShaderMask(
            shaderCallback: (Rect bounds) =>
                Palette.createRoomGradient.createShader(
              bounds,
            ),
            child: Icon(
              Icons.video_call,
              size: getProportionateScreenHeight(35),
            ),
          ),
          Text("Create\n Room")
        ],
      ),
    );
  }
}
