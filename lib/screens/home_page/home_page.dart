import 'package:facebook_flutter_ver2/config/size_config.dart';
import 'package:facebook_flutter_ver2/data/data.dart';
import 'package:flutter/material.dart';

import 'components/appbar_homepage.dart';
import 'body_homepage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          AppBarHomePage(),
          BodyHomePage(
            currentUser: currentUser,
            usersOnline: onlineUsers,
          )
        ],
      ),
    );
  }
}
