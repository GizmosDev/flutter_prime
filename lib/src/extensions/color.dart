library flutter_prime;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// ignore: unused_import
import 'package:flutter_prime/flutter_prime.dart';

extension ColorPrime on Color {
  /// Create a [Color] from a string in the format `aabbcc` or `ffaabbcc` with
  /// an optional leading `#`.
  static Color fromHex(String hexString) {
    final hasLeadingHashSign = hexString.substring(0, 1) == '#';
    return Color(int.parse(hexString.substring(hasLeadingHashSign ? 1 : 0).padLeft(8, 'f'), radix: 16));
  }

  /// The hex representation of `this` [Color]. A hash sign is prefixed if
  /// [leadingHashSign] is set to `true` (default is `true`).
  /// Set `includeAlpha` to include the opacity of the color.
  String toHex({bool leadingHashSign = true, bool includeAlpha = true}) => '${leadingHashSign ? '#' : ''}'
      '${includeAlpha ? alpha.toRadixString(16).padLeft(2, '0') : ''}'
      '${red.toRadixString(16).padLeft(2, '0')}'
      '${green.toRadixString(16).padLeft(2, '0')}'
      '${blue.toRadixString(16).padLeft(2, '0')}';
}
