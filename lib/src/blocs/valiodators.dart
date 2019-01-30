import 'dart:async';


class Validators {
  final validateEmail = StreamTransformer<String, String>.fromHandlers(
    handleData: (email, sink) {
      if (email.contains('@')){
          sink.add(email);
      } else {
          sink.addError('Enter a valid E-mail');
      }
    } 
  );

  final validatePassword = StreamTransformer<String, String>.fromHandlers(
    handleData: (password, sink) {
      if( password.length > 3 ) {
        sink.add(password);
      } else {
        sink.addError('PAssword must be atleast 4 characters.');
      }
    }
  );
}