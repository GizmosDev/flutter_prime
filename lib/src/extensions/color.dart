library;

import 'dart:math';

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

  /// Return a random `Color` with an optional `alpha` value.
  static Color random({double alpha = 1.0}) {
    return Color.fromRGBO(Random().nextInt(255), Random().nextInt(255), Random().nextInt(255), alpha);
  }

  /// The hex representation of `this` [Color]. A hash sign is prefixed if
  /// [leadingHashSign] is set to `true` (default is `true`).
  /// Set `includeAlpha` to include the opacity of the color.
  String toHex({bool leadingHashSign = true, bool includeAlpha = true}) => '${leadingHashSign ? '#' : ''}'
      '${includeAlpha ? (255 * a).round().toRadixString(16).padLeft(2, '0') : ''}'
      '${(255 * r).round().toRadixString(16).padLeft(2, '0')}'
      '${(255 * g).round().toRadixString(16).padLeft(2, '0')}'
      '${(255 * b).round().toRadixString(16).padLeft(2, '0')}';

  /// Create a [ColorFilter] with the specified [BlendMode].
  /// See: https://api.flutter.dev/flutter/dart-ui/BlendMode.html for [BlendMode] options.
  ColorFilter filter({BlendMode blendMode = BlendMode.srcIn}) => ColorFilter.mode(this, blendMode);

  // Methods to lighten or darken a colour

  /// Method 1: using HSL and an amount between 0 and 1
  /// Based on the methods here: https://stackoverflow.com/a/58604669/144857
  Color _darkenByAmount({double amount = .1}) {
    assert(amount >= 0 && amount <= 1);

    final hsl = HSLColor.fromColor(this);
    final hslDark = hsl.withLightness((hsl.lightness - amount).clamp(0.0, 1.0));

    return hslDark.toColor();
  }

  Color _lightenByAmount({double amount = .1}) {
    assert(amount >= 0 && amount <= 1);
    final hsl = HSLColor.fromColor(this);
    final hslLight = hsl.withLightness((hsl.lightness + amount).clamp(0.0, 1.0));

    return hslLight.toColor();
  }

  /// Method 2: using RGB and a percentage between 1 and 100
  /// Based on the methods here: https://stackoverflow.com/a/60191441/144857
  /// Darken a color by {percent}
  Color _darkenByPercent({int percent = 10}) {
    assert(1 <= percent && percent <= 100);
    final percentFactor = 1 - percent / 100;

    return Color.from(alpha: a, red: (r * percentFactor), green: (g * percentFactor), blue: (b * percentFactor));
  }

  /// Lighten a color by {percent}
  Color _lightenByPercent({int percent = 10}) {
    assert(1 <= percent && percent <= 100);
    final p = percent / 100;

    double adjust(double value) {
      return (value + ((1 - value) * p));
    }

    return Color.from(alpha: a, red: adjust(r), green: adjust(g), blue: adjust(b));
  }

  /// Return a new [Color] darkened by either a specified `amount` or by a specified `percent`.
  Color darken({double? amount, int? percent}) {
    assert(amount != null || percent != null);

    if (amount != null) return _darkenByAmount(amount: amount);
    if (percent != null) return _darkenByPercent(percent: percent);

    return this;
  }

  /// Return a new [Color] lightened by either a specified `amount` or by a specified `percent`.
  Color lighten({double? amount, int? percent}) {
    assert(amount != null || percent != null);

    if (amount != null) return _lightenByAmount(amount: amount);
    if (percent != null) return _lightenByPercent(percent: percent);

    return this;
  }
}
