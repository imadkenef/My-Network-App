import 'package:flutter/material.dart';

import 'colors.dart';
import 'text_styles.dart';

var appTheme = ThemeData(
  appBarTheme: AppBarTheme(color: transparent),
  floatingActionButtonTheme:
      FloatingActionButtonThemeData(backgroundColor: orange),
  scaffoldBackgroundColor: navy,
  textTheme: TextTheme(
      displayLarge: h1,
      displayMedium: h2,
      displaySmall: h3,
      headlineMedium: h4,
      headlineSmall: h5,
      titleLarge: title1,
      titleSmall: title2,
      bodyLarge: body,
      bodySmall: caption),

);
