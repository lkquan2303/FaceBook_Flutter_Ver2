import 'package:facebook_flutter_ver2/config/size_config.dart';
import 'package:facebook_flutter_ver2/models/post_model.dart';
import 'package:facebook_flutter_ver2/screens/home_page/components/user_post/user_post_header.dart';
import 'package:flutter/cupertino.dart';


class UserHeaderCaption extends StatelessWidget {
  const UserHeaderCaption({
    Key key,
    @required this.post,
  }) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    return Padding(
      //MARK: POST CAPTION & IMAGE
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          PostHeader(post: post),
          const SizedBox(height: 6.0),
          Text(
            post.caption,
            style: TextStyle(
              fontSize: getProportionateScreenWidth(17),
            ),
          ),
          const SizedBox(height: 3.0),
        ],
      ),
    );
  }
}
