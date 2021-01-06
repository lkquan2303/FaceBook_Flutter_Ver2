import 'package:facebook_flutter_ver2/config/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgIconAsset extends StatelessWidget {
  const SvgIconAsset({
    Key key, @required this.image,
  }) : super(key: key);
  final String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(
        0,
        getProportionateScreenWidth(16),
        getProportionateScreenWidth(16),
        getProportionateScreenWidth(16),
      ),
      child: SvgPicture.asset(
        image,
        height: getProportionateScreenHeight(18),
      ),
    );
  }
}