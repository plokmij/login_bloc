import 'dart:async';
import 'valiodators.dart';

class Bloc extends Validators {
  final _email = StreamController<String>();
  final _password = StreamController<String>();

  //Adddata to stream
  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);

  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

  dispose() {
    _email.close();
    _password.close();
  }
} 