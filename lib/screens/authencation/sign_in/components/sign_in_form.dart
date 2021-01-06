import 'package:facebook_flutter_ver2/config/constants.dart';
import 'package:facebook_flutter_ver2/config/size_config.dart';
import 'package:facebook_flutter_ver2/screens/authencation/sign_in/components/svg_icon_asset.dart';
import 'package:flutter/material.dart';

TextField buildEmailTextField() {
  return TextField(
    decoration: InputDecoration(
      hintText: "Enter your email",
      labelText: "Email",
      suffixIcon: SvgIconAsset(
        image: "assets/icons/Mail.svg",
      ),
    ),
  );
}

TextField buildPasswordTextField() {
  return TextField(
    decoration: InputDecoration(
      hintText: "Enter your password",
      labelText: "Password",
      suffixIcon: SvgIconAsset(
        image: "assets/icons/Lock.svg",
      ),
    ),
  );
}

Row buildSignInAction() {
  return Row(
    children: [
      Checkbox(
        activeColor: kPrimaryColor,
        value: true,
        onChanged: (bool) => {},
      ),
      Text(
        "Remember me",
        style: TextStyle(
          fontSize: getProportionateScreenWidth(12),
        ),
      ),
      Spacer(),
      Text(
        "Forgot Password",
        style: TextStyle(
          decoration: TextDecoration.underline,
          fontSize: getProportionateScreenWidth(12),
        ),
      )
    ],
  );
}

Row buildSignUpAction() {
  return Row(
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
  );
}
