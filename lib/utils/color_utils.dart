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
}
