// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

// ignore: unused_import
import 'package:flutter_prime/flutter_prime.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ThemeDataPrime Tests', () {
    setUp(() {});

    test('ThemeDataPrime.cupertinoThemeData Tests', () {
      //
    });

    test('Misc Tests', () {
      //
      const base = Typography.blackCupertino;
      const second = Typography.englishLike2021;

      const bodyColor = Color(0xffff0000);
      const displayColor = Color(0xff0000ff);

      print('colors:');
      print('      bodyColor - $bodyColor');
      print('      displayColor - $displayColor');

      print('base:');
      print('      displayLarge - ${base.displayLarge?.color}');
      print('      displaySmall - ${base.displaySmall?.color}');
      print('      bodyLarge    - ${base.bodyLarge?.color}');
      print('      bodySmall    - ${base.bodySmall?.color}');

      print('second:');
      print('      displayLarge - ${second.displayLarge?.color}');
      print('      displaySmall - ${second.displaySmall?.color}');
      print('      bodyLarge    - ${second.bodyLarge?.color}');
      print('      bodySmall    - ${second.bodySmall?.color}');

      final merged = base.merge(second);

      print('merged:');
      print('      displayLarge - ${merged.displayLarge?.color}');
      print('      displaySmall - ${merged.displaySmall?.color}');
      print('      bodyLarge    - ${merged.bodyLarge?.color}');
      print('      bodySmall    - ${merged.bodySmall?.color}');

      final merged2 = second.merge(base);

      print('merged2:');
      print('      displayLarge - ${merged2.displayLarge?.color}');
      print('      displaySmall - ${merged2.displaySmall?.color}');
      print('      bodyLarge    - ${merged2.bodyLarge?.color}');
      print('      bodySmall    - ${merged2.bodySmall?.color}');

      final applied = merged.apply(
        fontFamily: 'Verdana',
        bodyColor: bodyColor,
        displayColor: displayColor,
      );

      print('applied:');
      print('      displayLarge - ${applied.displayLarge?.color}');
      print('      displaySmall - ${applied.displaySmall?.color}');
      print('      bodyLarge    - ${applied.bodyLarge?.color}');
      print('      bodySmall    - ${applied.bodySmall?.color}');

      final combined = second.merge(base).apply(
            fontFamily: 'Verdana',
            bodyColor: bodyColor,
            displayColor: displayColor,
          );

      print('combined:');
      print('      displayLarge - ${combined.displayLarge?.color}');
      print('      displaySmall - ${combined.displaySmall?.color}');
      print('      bodyLarge    - ${combined.bodyLarge?.color}');
      print('      bodySmall    - ${combined.bodySmall?.color}');
    });
  });
}
