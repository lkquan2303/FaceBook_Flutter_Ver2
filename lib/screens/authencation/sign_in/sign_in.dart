import 'package:facebook_flutter_ver2/config/size_config.dart';
import 'package:flutter/material.dart';
import 'body_sign_in.dart';
import 'components/sign_in_app_bar.dart';
class SignInPage extends StatelessWidget {
  static String routeName = "/login_screen";

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(),
      body: SafeArea(
        child: BodySignIn(),
      ),
    );
  }
}
