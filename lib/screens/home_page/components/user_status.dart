import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_flutter_ver2/config/size_config.dart';
import 'package:facebook_flutter_ver2/models/user_model.dart';
import 'package:flutter/material.dart';

class UserStatus extends StatelessWidget {
  const UserStatus({
    Key key,
    @required this.currentUser,
  }) : super(key: key);

  final User currentUser;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenHeight(12),
        vertical: getProportionateScreenHeight(8),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: CachedNetworkImageProvider(currentUser.imageUrl),
            maxRadius: getProportionateScreenWidth(20),
            backgroundColor: Colors.transparent,
          ),
          SizedBox(
            width: 8.0,
          ),
          Expanded(
            child: TextField(
              decoration: InputDecoration.collapsed(
                hintText: "What are you thinking?",
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
