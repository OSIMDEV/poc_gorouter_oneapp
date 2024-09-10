import 'dart:math';

import 'package:flutter/material.dart';

extension ColorExtension on Color {
  /// 0.5 Opacity
  Color get secondary => withOpacity(0.5);

  /// 0.3 Opacity
  Color get disabled => withOpacity(0.3);

  /// 0.1 Opacity
  Color get backdrop => withOpacity(0.1);

  Color get invisible => withOpacity(0);

  Color get solid => solidOn(Colors.white);

  int _blend(int a, int b, double p) => (a * p + b * (1 - p)).round();

  Color solidOn(Color bg) => Color.fromRGBO(
        _blend(red, bg.red, opacity),
        _blend(green, bg.green, opacity),
        _blend(blue, bg.blue, opacity),
        1.0,
      );

  /// Convert an RGB color to HSL, where r, g and b are in the range \[0, 255\].
  /// Returns a list \[h, s, l\] with values in the range \[0, 1\].
  List<num> rgbToHsl(num r, num g, num b) {
    r /= 255.0;
    g /= 255.0;
    b /= 255.0;
    final mx = max(r, max(g, b));
    final mn = min(r, min(g, b));
    num h;
    final l = (mx + mn) / 2.0;

    if (mx == mn) {
      return [0.0, 0.0, l];
    }

    final d = mx - mn;

    final s = l > 0.5 ? d / (2.0 - mx - mn) : d / (mx + mn);

    if (mx == r) {
      h = (g - b) / d + (g < b ? 6.0 : 0.0);
    } else if (mx == g) {
      h = (b - r) / d + 2.0;
    } else {
      h = (r - g) / d + 4.0;
    }

    h /= 6.0;

    return [h, s, l];
  }
}
