library;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: unused_import
import 'package:flutter_prime/flutter_prime.dart';

extension ThemeDataPrime on ThemeData {
  CupertinoThemeData get cupertinoThemeData {
    return CupertinoThemeData(
      brightness: brightness,
      primaryColor: colorScheme.primary,
      primaryContrastingColor: colorScheme.onPrimary,
      textTheme: CupertinoTextThemeData(
        primaryColor: colorScheme.primary,
        textStyle: textTheme.bodyMedium,
        actionTextStyle: textTheme.displaySmall,
        tabLabelTextStyle: textTheme.titleSmall,
        navTitleTextStyle: textTheme.titleSmall,
        navLargeTitleTextStyle: textTheme.titleMedium,
        navActionTextStyle: textTheme.titleSmall,
        pickerTextStyle: textTheme.displaySmall,
        dateTimePickerTextStyle: textTheme.displaySmall,
      ),
      barBackgroundColor: colorScheme.primary,
      scaffoldBackgroundColor: colorScheme.background,
    );
  }
}
