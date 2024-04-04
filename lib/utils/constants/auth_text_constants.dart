import 'package:flutter/material.dart';

abstract class TextConst {
  static const appBarText = Text(
    'Login to your account',
    style: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: 20,
      color: Colors.white,
    ),
  );

  static const password = Text('Password');
  static const verifyEmailButton = Text('Verify email');
  static const registerButton = Text('Register');
  static const username = Text('Username');
  static const elevationButtonLogin = Text(
    'Login',
    style: TextStyle(
      fontWeight: FontWeight.w700,
      fontSize: 16,
    ),
  );
  static const textButtonPassword = Text(
    'Reset password',
    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
  );

  static const loginmain = Text(
    'In order to use the editing and rating capabilities of TMDB, as well as get personal recommendations you will need to login to your account. If you do not have an account, registering for an account is free and simple.',
    style: TextStyle(
        fontSize: 14, color: Colors.black, fontWeight: FontWeight.w400),
  );

  static const sigenedUp = Text(
    "If you signed up but didn't get your verification email.",
    style: TextStyle(
        fontSize: 14, color: Colors.black, fontWeight: FontWeight.w400),
  );
}
