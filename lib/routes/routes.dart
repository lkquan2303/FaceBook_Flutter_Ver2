import 'package:facebook_flutter_ver2/screens/authencation/sign_in/sign_in.dart';
import 'package:facebook_flutter_ver2/screens/chat_room/chat_room.dart';
import 'package:facebook_flutter_ver2/screens/navigation_bar/nav_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  NavScreen.routeName: (context) => NavScreen(),
  SignInPage.routeName: (context) => SignInPage(),
  ChatRoom.routeName: (context) => ChatRoom()
};
