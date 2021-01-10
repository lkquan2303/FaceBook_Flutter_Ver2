import 'dart:math';

import 'package:facebook_flutter_ver2/helper/validation.dart';
import 'package:rxdart/rxdart.dart';

class SignInBloc {
  final _emailSubject = BehaviorSubject<String>();
  final _passwordSubject = BehaviorSubject<String>();
  final _btnSubject = BehaviorSubject<bool>();

  Stream<String> get emailStream => _emailSubject.stream;
  Sink<String> get emailSink => _emailSubject.sink;

  Stream<String> get passwordStream => _passwordSubject.stream;
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

  dispose() {
    _emailSubject.close();
    _passwordSubject.close();
    _btnSubject.close();
  }
}
