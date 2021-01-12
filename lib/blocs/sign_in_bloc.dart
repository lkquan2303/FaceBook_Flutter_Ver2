import 'dart:async';
import 'dart:io';

import 'package:facebook_flutter_ver2/helper/validation.dart';
import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class SignInBloc {
  final _emailSubject = BehaviorSubject<String>();
  final _passwordSubject = BehaviorSubject<String>();
  final _btnSubject = BehaviorSubject<bool>();

  var emailValidator = StreamTransformer<String, String>.fromHandlers(
    handleData: (data, sink) => sink.add(
      Validation.validateEmail(data),
    ),
  );

  var passwordValidator = StreamTransformer<String, String>.fromHandlers(
    handleData: (data, sink) => sink.add(
      Validation.validatePass(data),
    ),
  );

  Stream<String> get emailStream =>
      _emailSubject.stream.transform(emailValidator);
  Sink<String> get emailSink => _emailSubject.sink;

  Stream<String> get passwordStream =>
      _passwordSubject.stream.transform(passwordValidator);
  Sink<String> get passwordSink => _passwordSubject.sink;

  Stream<bool> get btnStream => _btnSubject.stream;
  Sink<bool> get btnSink => _btnSubject.sink;

  SignInBloc() {
    Rx.combineLatest2(_emailSubject, _passwordSubject, (email, password) {
      return Validation.validateEmail(email) == null &&
          Validation.validatePass(password) == null;
    }).listen((event) {
      btnSink.add(event);
    });
  }

  createAlertDialog(BuildContext context) {
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

  
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      title: Text("Error"),
      content: Text("Please enter your account password"),
      actions: [
        okButton,
      ],
    );
    // show the dialog
    if(Platform.isAndroid){
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: alert,
        );
      },
    );
  }
  }

  dispose() {
    _emailSubject.close();
    _passwordSubject.close();
    _btnSubject.close();
  }
}
