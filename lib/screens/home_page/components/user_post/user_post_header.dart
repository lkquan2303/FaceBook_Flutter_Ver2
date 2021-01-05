import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_flutter_ver2/config/size_config.dart';
import 'package:facebook_flutter_ver2/models/post_model.dart';
import 'package:flutter/material.dart';


class PostHeader extends StatelessWidget {
  const PostHeader({
    Key key,
    @required this.post,
  }) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          backgroundImage: CachedNetworkImageProvider(
            post.user.imageUrl,
          ),
        ),
        const SizedBox(width: 8.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              post.user.name,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: getProportionateScreenHeight(16),
              ),
            ),
            const SizedBox(width: 6.0),
            Row(
              children: [
                Text("${post.timeAgo} * "),
                Icon(
                  Icons.public,
                  color: Colors.grey,
                  size: getProportionateScreenWidth(15),
                ),
              ],
            ),
          ],
        ),
        Spacer(),
        IconButton(icon: Icon(Icons.more_horiz), onPressed: () {})
      ],
    );
  }
}
