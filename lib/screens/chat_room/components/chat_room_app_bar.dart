import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_flutter_ver2/config/constants.dart';
import 'package:facebook_flutter_ver2/config/size_config.dart';
import 'package:flutter/material.dart';
import '../chat_room.dart';

AppBar buildChatRoomAppBar(ChatRoomAgruments agruments) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 0,
    title: Text(
      "Chat",
      style: TextStyle(
        color: kPrimaryColor,
        fontWeight: FontWeight.bold,
        fontSize: getProportionateScreenWidth(20),
      ),
    ),
    centerTitle: true,
    iconTheme: IconThemeData(
      color: Colors.black,
    ),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 8),
        child: CircleAvatar(
          backgroundImage: CachedNetworkImageProvider(
            agruments.currentUser.imageUrl,
          ),
        ),
      ),
    ],
  );
}
