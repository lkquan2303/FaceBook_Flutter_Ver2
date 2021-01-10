import 'package:facebook_flutter_ver2/config/constants.dart';
import 'package:facebook_flutter_ver2/models/user_model/post_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class UserInteraction extends StatelessWidget {
  const UserInteraction({
    Key key,
    @required this.post,
  }) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 10.0, right: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.all(5.0),
            decoration: BoxDecoration(
              color: kPrimaryColor,
              shape: BoxShape.circle,
            ),
            child: Icon(
              MdiIcons.thumbUp,
              color: Colors.white,
              size: 12,
            ),
          ),
          const SizedBox(width: 3.0),
          Text(
            "${post.likes}",
            style: TextStyle(
              color: Colors.grey[800],
            ),
          ),
          Spacer(),
          Text("${post.comments} comments"),
          const SizedBox(width: 8.0),
          Text("${post.shares} shares")
        ],
      ),
    );
  }
}
