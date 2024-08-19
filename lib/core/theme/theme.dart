import 'package:flutter/material.dart';

import 'app_pallete.dart';


class AppTheme {
  static OutlineInputBorder _border(Color color) => OutlineInputBorder(
        borderSide: BorderSide(width: 2, color: color),
        borderRadius: BorderRadius.circular(10),
      );
  // ignore: non_constant_identifier_names
  static final OrangeMode = ThemeData.light().copyWith(
      scaffoldBackgroundColor: Pallete.backgroundColor,
      inputDecorationTheme: InputDecorationTheme(
          focusedBorder: _border(Pallete.borderColor),
          enabledBorder: _border(Pallete.gradient1)),
          
      );

  // ignore: non_constant_identifier_names
  static final FontFamily = ThemeData(fontFamily: 'Cabin');
}
