import 'package:facebook_flutter_ver2/config/constants.dart';

class Validation {
  static String validatePass(String pass) {
    if (pass == null) {
      return "Password invalid";
    }

    if (pass.length < 6) {
      return "Password require minumum 6 character";
    }

    return null;
  }

  static String validateEmail(String email) {
    if (email == "") {
      return "Email invalid";
    }

    if (email == null) {
      return "Email invalid";
    }

    if (!emailValidatorRegExp.hasMatch(email)) {
      return "Email invalid";
    }

    return null;
  }
}
