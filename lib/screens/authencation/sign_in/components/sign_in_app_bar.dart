import 'package:facebook_flutter_ver2/config/size_config.dart';
import 'package:flutter/material.dart';


  AppBar buildAppBar() {
    return AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Sign In",
          style: TextStyle(
            color: Colors.grey,
            fontSize: getProportionateScreenWidth(18),
          ),
        ),
        centerTitle: true,
        elevation: 0,
      );
  }