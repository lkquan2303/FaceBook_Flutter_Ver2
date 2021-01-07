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
      appBar: buildChatRoomAppBar(agruments),
      body: BodyChatRoom(),
    );
  }
}

class ChatRoomAgruments {
  final User currentUser;

  ChatRoomAgruments({
    @required this.currentUser,
  });
}
