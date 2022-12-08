import 'package:flutter/material.dart';

// ignore: unused_import
import 'package:flutter_prime/flutter_prime.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ColorPrime Tests', () {
    setUp(() {});

    test('ColorPrime.fromHex() Tests', () {
      expect(ColorPrime.fromHex('#ffffff'), Colors.white);
      expect(ColorPrime.fromHex('#80ffffff'), Colors.white.withOpacity(0.5));

      expect(ColorPrime.fromHex('ffffff'), Colors.white);
      expect(ColorPrime.fromHex('80ffffff'), Colors.white.withOpacity(0.5));

      expect(ColorPrime.fromHex('#673ab7'), const Color(0xff673ab7));
      expect(ColorPrime.fromHex('673ab7'), const Color(0xff673ab7));

      for (int a = 0; a < 5; ++a) {
        for (int r = 10; r < 15; ++r) {
          for (int g = 20; g < 25; ++g) {
            for (int b = 30; b < 35; ++b) {
              final hexCode = '${a.toRadixString(16).padLeft(2, '0')}'
                  '${r.toRadixString(16).padLeft(2, '0')}'
                  '${g.toRadixString(16).padLeft(2, '0')}'
                  '${b.toRadixString(16).padLeft(2, '0')}';

              expect(ColorPrime.fromHex(hexCode), Color.fromARGB(a, r, g, b));
            }
          }
        }
      }
    });

    test('ColorPrime.toHex() Tests', () {
      const testColor = Color(0x12345678);

      expect(testColor.toHex(), '#12345678');
      expect(testColor.toHex(leadingHashSign: true, includeAlpha: true), '#12345678');
      expect(testColor.toHex(leadingHashSign: false), '12345678');
      expect(testColor.toHex(includeAlpha: false), '#345678');
      expect(testColor.toHex(leadingHashSign: false, includeAlpha: false), '345678');
    });
  });
}
