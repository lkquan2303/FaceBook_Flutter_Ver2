import 'package:facebook_flutter_ver2/config/constants.dart';
import 'package:facebook_flutter_ver2/config/size_config.dart';
import 'package:facebook_flutter_ver2/data/data.dart';
import 'package:facebook_flutter_ver2/models/user_model/user_model.dart';
import 'package:facebook_flutter_ver2/screens/chat_room/chat_room.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'icons_button_container.dart';

class AppBarHomePage extends StatelessWidget {
  final User currentUser;

  const AppBarHomePage({
    Key key,
    @required this.currentUser,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.white,
      brightness: Brightness.light,
      title: Text(
        "facebook",
        style: TextStyle(
          color: kPrimaryColor,
          fontWeight: FontWeight.bold,
          fontSize: getProportionateScreenWidth(25),
          letterSpacing: -1.2,
        ),
      ),
      centerTitle: false,
      actions: [
        IconsButtonContainer(
          icon: Icons.search,
          onPress: () {},
        ),
        IconsButtonContainer(
          icon: MdiIcons.facebookMessenger,
          onPress: () {
            Navigator.pushNamed(
              context,
              ChatRoom.routeName,
              arguments: ChatRoomAgruments(currentUser: currentUser, onlineUsers: onlineUsers),
            );
          },
        ),
      ],
    );
  }
}
