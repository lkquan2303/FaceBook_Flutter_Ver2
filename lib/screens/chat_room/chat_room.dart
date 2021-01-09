import 'package:facebook_flutter_ver2/models/user_model.dart';
import 'package:facebook_flutter_ver2/screens/chat_room/body_chat_room.dart';
import 'package:flutter/material.dart';

import 'components/chat_room_app_bar.dart';

class ChatRoom extends StatelessWidget {
  static String routeName = "/chat_room";

  const ChatRoom({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ChatRoomAgruments agruments =
        ModalRoute.of(context).settings.arguments;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildChatRoomAppBar(agruments),
      body: BodyChatRoom(agruments: agruments),
    );
  }
}

class ChatRoomAgruments {
  final User currentUser;
  final List<User> onlineUsers;

  ChatRoomAgruments({
    @required this.currentUser,
    @required this.onlineUsers,
  });
}
