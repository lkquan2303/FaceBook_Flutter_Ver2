import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../config/size_config.dart';

class ProfileAvatar extends StatelessWidget {
  final String imgUrl;
  final bool isActive;

  const ProfileAvatar({
    Key key,
    @required this.imgUrl,
    @required this.isActive,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      CircleAvatar(
        backgroundImage: CachedNetworkImageProvider(imgUrl),
        maxRadius: getProportionateScreenWidth(20),
        backgroundColor: Colors.transparent,
      ),
      Positioned(
        right: 0,
        bottom: 0,
        child: Container(
          height: getProportionateScreenWidth(12),
          width: getProportionateScreenWidth(12),
          decoration:
              BoxDecoration(color: Colors.green, shape: BoxShape.circle),
        ),
      )
    ]);
  }
}
