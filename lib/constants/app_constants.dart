import 'package:flutter/material.dart';

import 'color_constants.dart';

abstract final class AppConstants {
  const AppConstants._();

  static const int currentUserId = 4;

  static ThemeData get themeLight => ThemeData.light().copyWith(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber).copyWith(
          background: ColorConstants.backgroundColor,
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          foregroundColor: Color.fromARGB(255, 74, 74, 74),
          elevation: 0,
        ),
      );
}
