import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_flutter_ver2/components/search_textfield.dart';
import 'package:facebook_flutter_ver2/config/size_config.dart';
import 'package:flutter/material.dart';
import 'chat_room.dart';
import 'components/chat_room_online_user.dart';

class BodyChatRoom extends StatelessWidget {
  final ChatRoomAgruments agruments;

  const BodyChatRoom({Key key, @required this.agruments}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            SearchTextField(),
            ListUserOnline(agruments: agruments),
            Column(
              children: List.generate(
                agruments.onlineUsers.length,
                (index) => UserOnlineChat(
                  imgImage: agruments.onlineUsers[index].imageUrl,
                  userName: agruments.onlineUsers[index].name,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UserOnlineChat extends StatelessWidget {
  const UserOnlineChat({
    Key key,
    @required this.imgImage,
    @required this.userName,
  }) : super(key: key);

  final String imgImage;
  final String userName;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: ListTile(
    title: Text(
      userName,
      style: TextStyle(
        fontSize: getProportionateScreenWidth(20),
        fontWeight: FontWeight.bold,
      ),
    ),
    leading: OnlineUserCard(
        imgImage: imgImage,
        isActive: true,
        userName: userName,
        isUserChat: false,
      ),
    subtitle: Text(
      "Hello, go to net bro bro",
      style: TextStyle(
        fontSize: getProportionateScreenWidth(14),
      ),
    ),
        ),
      );
  }
}
