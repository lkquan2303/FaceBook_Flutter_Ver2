import 'package:facebook_flutter_ver2/animation/fade_animation.dart';
import 'package:facebook_flutter_ver2/config/constants.dart';
import 'package:facebook_flutter_ver2/config/size_config.dart';
import 'package:facebook_flutter_ver2/screens/authencation/sign_in/components/svg_icon_asset.dart';
import 'package:flutter/material.dart';

FadeAnimation buildEmailTextField() {
  return FadeAnimation(
      1.5,
      TextField(
        decoration: InputDecoration(
          hintText: "Enter your email",
          labelText: "Email",
          suffixIcon: SvgIconAsset(
            image: "assets/icons/Mail.svg",
          ),
        ),
      ));
}

FadeAnimation buildPasswordTextField() {
  return FadeAnimation(
      1.5,
      TextField(
        decoration: InputDecoration(
          hintText: "Enter your password",
          labelText: "Password",
          suffixIcon: SvgIconAsset(
            image: "assets/icons/Lock.svg",
          ),
        ),
      ));
}

FadeAnimation buildSignInAction() {
  return FadeAnimation(
      1.3,
      Row(
        children: [
          Checkbox(
            activeColor: kPrimaryColor,
            value: true,
            onChanged: (bool) => {},
          ),
          Text(
            "Remember me",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(14),
            ),
          ),
          Spacer(),
          Text(
            "Forgot Password",
            style: TextStyle(
              decoration: TextDecoration.underline,
              fontSize: getProportionateScreenWidth(14),
            ),
          )
        ],
      ));
}

FadeAnimation buildSignUpAction() {
  return FadeAnimation(
      1.3,
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Don't have an account? ",
            style: TextStyle(
              fontSize: getProportionateScreenHeight(14),
            ),
          ),
          Text(
            "Sign Up",
            style: TextStyle(
              color: kPrimaryColor,
              fontSize: getProportionateScreenHeight(14),
            ),
          ),
        ],
      ));
}
