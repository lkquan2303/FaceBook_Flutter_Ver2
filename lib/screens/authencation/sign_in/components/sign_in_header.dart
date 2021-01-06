import 'package:facebook_flutter_ver2/config/size_config.dart';
import 'package:flutter/material.dart';

class TitleDefault extends StatelessWidget {
  const TitleDefault({
    Key key,
    @required this.title,
  }) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: getProportionateScreenWidth(25),
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class TitleDetails extends StatelessWidget {
  const TitleDetails({
    Key key,
    @required this.titleDetails,
  }) : super(key: key);
  final String titleDetails;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: SizeConfig.screenWidth * 0.7,
      child: Text(titleDetails,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: getProportionateScreenWidth(15))),
    );
  }
}
