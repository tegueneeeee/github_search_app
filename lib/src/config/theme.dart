import 'package:flutter/material.dart';
import 'package:github_search_app/src/config/color_schemes.g.dart';
import 'package:github_search_app/src/core/gen/fonts.gen.dart';

ThemeData get lightTheme => _createTheme(
      colorScheme: lightColorScheme,
    );

ThemeData get darkTheme => _createTheme(
      colorScheme: darkColorScheme,
    );

ThemeData _createTheme({
  required ColorScheme colorScheme,
}) =>
    ThemeData(
      colorScheme: colorScheme,
      fontFamily: FontFamily.pretendard,
    );
