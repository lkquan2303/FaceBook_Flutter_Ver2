import 'package:facebook_flutter_ver2/components/default_button.dart';
import 'package:facebook_flutter_ver2/helper/function_helper.dart';
import 'package:facebook_flutter_ver2/screens/authencation/sign_in/components/sign_in_social.dart';
import 'package:facebook_flutter_ver2/screens/navigation_bar/nav_screen.dart';
import 'package:flutter/material.dart';

import 'components/sign_in_form.dart';
import 'components/sign_in_header.dart';

class BodySignIn extends StatelessWidget {
  const BodySignIn({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            sizedBoxSpacer(0.09),
            TitleDefault(title: "Welcome Back"),
            sizedBoxSpacer(0.02),
            TitleDetails(
              titleDetails:
                  "Sign in with your email and password or continue with another media",
            ),
            sizedBoxSpacer(0.09),
            buildEmailTextField(),
            sizedBoxSpacer(0.03),
            buildPasswordTextField(),
            sizedBoxSpacer(0.02),
            buildSignInAction(),
            sizedBoxSpacer(0.03),
            DefaultButton(
              btnTitle: "Continue",
              onPress: () {
                Navigator.pushReplacementNamed(context, NavScreen.routeName);
              },
            ),
            sizedBoxSpacer(0.1),
            buildSocialSignIn(),
            sizedBoxSpacer(0.1),
            buildSignUpAction()
          ],
        ),
      ),
    );
  }
}
