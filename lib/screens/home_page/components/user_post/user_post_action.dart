import 'package:facebook_flutter_ver2/config/size_config.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class UserAction extends StatelessWidget {
  const UserAction({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenHeight(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //MARK: Button Like
          FlatButton.icon(
            onPressed: () {},
            icon: Icon(
              MdiIcons.thumbUpOutline,
              color: Colors.grey[600],
            ),
            label: Text(
              "Like",
              style: TextStyle(
                color: Colors.grey[800],
              ),
            ),
          ),

          //MARK: Button Comment
          FlatButton.icon(
            onPressed: () {},
            icon: Icon(
              MdiIcons.commentOutline,
              color: Colors.grey[600],
            ),
            label: Text(
              "Comments",
              style: TextStyle(
                color: Colors.grey[800],
              ),
            ),
          ),

          //MARK: Button Share
          FlatButton.icon(
            onPressed: () {},
            icon: Icon(
              MdiIcons.shareAllOutline,
              color: Colors.grey[600],
            ),
            label: Text(
              "Share",
              style: TextStyle(
                color: Colors.grey[800],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
