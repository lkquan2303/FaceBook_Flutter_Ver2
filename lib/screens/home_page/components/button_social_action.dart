import 'package:flutter/material.dart';
import '../../../config/size_config.dart';

class ButtonSocialAction extends StatelessWidget {
  const ButtonSocialAction({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          //MARK: Button Live
          FlatButton.icon(
            onPressed: () {
              //TODO
            },
            icon: Icon(
              Icons.videocam,
              color: Colors.red,
              size: getProportionateScreenWidth(25),
            ),
            label: Text("Live"),
          ),
          VerticalDivider(
            width: 8,
          ),

          //MARK: Button Photo
          FlatButton.icon(
            onPressed: () {
              //TODO
            },
            icon: Icon(
              Icons.photo_library,
              color: Colors.green,
              size: getProportionateScreenWidth(25),
            ),
            label: Text("Photo"),
          ),
          VerticalDivider(
            width: 8,
          ),

          //MARK: Button Room
          FlatButton.icon(
            onPressed: () {
              //TODO
            },
            icon: Icon(
              Icons.video_call,
              color: Colors.purpleAccent,
              size: getProportionateScreenWidth(25),
            ),
            label: Text("Room"),
          ),
        ],
      ),
    );
  }
}
