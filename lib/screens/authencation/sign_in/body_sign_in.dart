import 'package:facebook_flutter_ver2/helper/function_helper.dart';
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
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              sizedBoxSpacer(0.06),
              TitleDefault(title: "Welcome Back"),
              sizedBoxSpacer(0.02),
              TitleDetails(
                titleDetails:
                    "Sign in with your email and password or continue with another media",
              ),
              SignInForm()
            ],
          ),
        ),
      ),
    );
  }
}
