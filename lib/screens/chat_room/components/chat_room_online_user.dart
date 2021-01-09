import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_flutter_ver2/config/size_config.dart';
import 'package:flutter/material.dart';

import '../chat_room.dart';

class ListUserOnline extends StatelessWidget {
  const ListUserOnline({
    Key key,
    @required this.agruments,
  }) : super(key: key);

  final ChatRoomAgruments agruments;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(agruments.onlineUsers.length + 1, (index) {
          if (index == 0) {
            return Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.3),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    Icons.video_call,
                    size: getProportionateScreenWidth(30),
                  ),
                ),
                Text(
                  "Create rooms",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(14),
                  ),
                )
              ],
            );
          }
          return OnlineUserCard(
            imgImage: agruments.onlineUsers[index - 1].imageUrl,
            isActive: true,
            userName: agruments.onlineUsers[index - 1].name,
            isUserChat: true,
          );
        }),
      ),
    );
  }
}

class OnlineUserCard extends StatelessWidget {
  const OnlineUserCard({
    Key key,
    @required this.imgImage,
    @required this.isActive,
    @required this.userName,
    @required this.isUserChat,
  }) : super(key: key);

  final String imgImage;
  final bool isActive;
  final String userName;
  final bool isUserChat;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          Stack(
            children: [
              CircleAvatar(
                backgroundImage: CachedNetworkImageProvider(imgImage),
                maxRadius: getProportionateScreenWidth(30),
              ),
              if (isActive)
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                      height: getProportionateScreenWidth(15),
                      width: getProportionateScreenWidth(15),
                      decoration: BoxDecoration(
                        color: Colors.green,
                        shape: BoxShape.circle,
                      )),
                )
            ],
          ),
          if (isUserChat)
            Text(
              userName,
              style: TextStyle(
                fontSize: getProportionateScreenWidth(15),
              ),
            ),
        ],
      ),
    );
  }
}
