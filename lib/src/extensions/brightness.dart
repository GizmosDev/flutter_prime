library flutter_prime;

import 'package:flutter/foundation.dart';
import 'package:flutter/scheduler.dart';

// ignore: unused_import
import 'package:flutter_prime/flutter_prime.dart';

extension BrightnessPrime on Brightness {
  /// Return the current platform [Brightness] setting, without a [BuildContext].
  static Brightness get platformBrightness {
    return SchedulerBinding.instance.platformDispatcher.platformBrightness;
  }

  /// Return a [bool] indicating whether `this` Brightness matches the current platform [Brightness] setting.
  bool get isPlatformBrightness {
    return this == BrightnessPrime.platformBrightness;
  }
}
