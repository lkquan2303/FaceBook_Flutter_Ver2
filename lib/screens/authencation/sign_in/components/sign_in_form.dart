import 'package:facebook_flutter_ver2/animation/fade_animation.dart';
import 'package:facebook_flutter_ver2/components/default_button.dart';
import 'package:facebook_flutter_ver2/config/constants.dart';
import 'package:facebook_flutter_ver2/config/size_config.dart';
import 'package:facebook_flutter_ver2/helper/function_helper.dart';
import 'package:facebook_flutter_ver2/screens/authencation/sign_in/components/sign_in_social.dart';
import 'package:facebook_flutter_ver2/screens/authencation/sign_in/components/svg_icon_asset.dart';
import 'package:facebook_flutter_ver2/screens/navigation_bar/nav_screen.dart';
import 'package:flutter/material.dart';

FadeAnimation buildEmailTextField({TextEditingController emailController}) {
  return FadeAnimation(
    1.5,
    TextFormField(
      controller: emailController,
      decoration: InputDecoration(
        hintText: "Enter your email",
        labelText: "Email",
        suffixIcon: SvgIconAsset(
          image: "assets/icons/Mail.svg",
        ),
      ),
    ),
  );
}

FadeAnimation buildPasswordTextField(
    {TextEditingController passwordController}) {
  return FadeAnimation(
    1.5,
    TextFormField(
      controller: passwordController,
      decoration: InputDecoration(
        hintText: "Enter your password",
        labelText: "Password",
        suffixIcon: SvgIconAsset(
          image: "assets/icons/Lock.svg",
        ),
      ),
    ),
  );
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
    ),
  );
}

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        sizedBoxSpacer(0.06),
        FadeAnimation(
          1.5,
          TextFormField(
            decoration: InputDecoration(
              hintText: "Enter your email",
              labelText: "Email",
              suffixIcon: SvgIconAsset(
                image: "assets/icons/Mail.svg",
              ),
            ),
          ),
        ),
        sizedBoxSpacer(0.03),
        FadeAnimation(
          1.5,
          TextFormField(
            decoration: InputDecoration(
              hintText: "Enter your password",
              labelText: "Password",
              suffixIcon: SvgIconAsset(
                image: "assets/icons/Lock.svg",
              ),
            ),
          ),
        ),
        sizedBoxSpacer(0.02),
        FadeAnimation(
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
              ),
            ],
          ),
        ),
        sizedBoxSpacer(0.03),
        DefaultButton(
          btnTitle: "Continue",
          onPress: () {
            Navigator.pushReplacementNamed(context, NavScreen.routeName);
          },
        ),
        sizedBoxSpacer(0.08),
        FadeAnimation(
          1.3,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SocialSignIn(
                image: "assets/icons/google-icon.svg",
                onPress: () {},
              ),
              SocialSignIn(
                image: "assets/icons/Phone.svg",
                onPress: () {},
              ),
              SocialSignIn(
                image: "assets/icons/twitter.svg",
                onPress: () {},
              ),
            ],
          ),
        ),
        sizedBoxSpacer(0.06),
        FadeAnimation(
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
          ),
        )
      ],
    );
  }
}
