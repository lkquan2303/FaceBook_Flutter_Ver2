import 'package:facebook_flutter_ver2/animation/fade_animation.dart';
import 'package:facebook_flutter_ver2/blocs/sign_in_bloc.dart';
import 'package:facebook_flutter_ver2/components/default_button.dart';
import 'package:facebook_flutter_ver2/config/constants.dart';
import 'package:facebook_flutter_ver2/config/size_config.dart';
import 'package:facebook_flutter_ver2/helper/function_helper.dart';
import 'package:facebook_flutter_ver2/screens/authencation/sign_in/components/sign_in_social.dart';
import 'package:facebook_flutter_ver2/screens/authencation/sign_in/components/svg_icon_asset.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final signInBloc = SignInBloc();

  @override
  void initState() {
    super.initState();

    emailController.addListener(() {
      signInBloc.emailSink.add(emailController.text);
    });

    passwordController.addListener(() {
      signInBloc.passwordSink.add(passwordController.text);
    });
  }

  @override
  void dispose() {
    super.dispose();
    signInBloc.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        sizedBoxSpacer(0.06),
        //MARK: <--------------User Sign In ------------->
        StreamBuilder<String>(
            stream: signInBloc.emailStream,
            builder: (context, snapshot) {
              return FadeAnimation(
                  1.5,
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: "Enter your email",
                      labelText: "Email",
                      suffixIcon: SvgIconAsset(
                        image: "assets/icons/Mail.svg",
                      ),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      errorText: snapshot.data,
                    ),
                  ));
            }),
        sizedBoxSpacer(0.03),
        StreamBuilder<String>(
            stream: signInBloc.passwordStream,
            builder: (context, snapshot) {
              return FadeAnimation(
                1.5,
                TextFormField(
                  obscureText: true,
                  controller: passwordController,
                  decoration: InputDecoration(
                    hintText: "Enter your password",
                    labelText: "Password",
                    suffixIcon: SvgIconAsset(
                      image: "assets/icons/Lock.svg",
                    ),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    errorText: snapshot.data,
                  ),
                ),
              );
            }),
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
        StreamBuilder<bool>(
            stream: signInBloc.btnStream,
            builder: (context, snapshot) {
              return DefaultButton(
                btnTitle: "Continue",
                onPress: snapshot.data == null ? () {
                  signInBloc.createAlertDialog(context);
                } : (){},
              );
            }),
        //MARK: <--------------User Sign In ------------->
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
