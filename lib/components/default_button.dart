import 'package:facebook_flutter_ver2/animation/fade_animation.dart';
import 'package:facebook_flutter_ver2/config/constants.dart';
import 'package:facebook_flutter_ver2/config/size_config.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key key,
    @required this.btnTitle,
    @required this.onPress,
  }) : super(key: key);
  final String btnTitle;
  final GestureTapCallback onPress;

  @override
  Widget build(BuildContext context) {
    return FadeAnimation(
        1.3,
        FlatButton(
          onPressed: onPress,
          child: Container(
            width: double.infinity,
            height: 65,
            decoration: BoxDecoration(
                color: kPrimaryColor, borderRadius: BorderRadius.circular(20)),
            child: Center(
              child: Text(
                btnTitle,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: getProportionateScreenWidth(15),
                ),
              ),
            ),
          ),
        ));
  }
}
