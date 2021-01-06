import 'package:facebook_flutter_ver2/config/size_config.dart';
import 'package:flutter/material.dart';

Widget sizedBoxSpacer(double index) {
  return SizedBox(height: SizeConfig.screenHeight * index);
}