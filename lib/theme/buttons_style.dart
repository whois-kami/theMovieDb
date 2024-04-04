import 'package:flutter/material.dart';

abstract class ButtonsStyle {
  static const linkStyle = ButtonStyle(
    textStyle: MaterialStatePropertyAll(TextStyle(fontWeight: FontWeight.w400)),
    foregroundColor: MaterialStatePropertyAll(
      Color.fromRGBO(1, 180, 228, 1),
    ),
  );
}
