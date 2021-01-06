import 'package:facebook_flutter_ver2/routes/routes.dart';
import 'package:facebook_flutter_ver2/screens/authencation/sign_in/sign_in.dart';
import 'package:facebook_flutter_ver2/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: buildThemeData(),
      initialRoute: SignInPage.routeName,
      routes: routes,
    );
  }
}
