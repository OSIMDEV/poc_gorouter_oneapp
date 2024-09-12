import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart'
    show ButtonStyle, ColorScheme, TextButton, TextStyle;
import 'package:flutter/widgets.dart';

final osimColorScheme = OsimColorScheme.light();

/// New color scheme, aligned with App Style Guide_v3
///
/// This scheme will cache the the opacity from 10 to 100% for [OsimColor],
/// to provide O(1) time complexity, the space complexity is also O(1) as
/// the color is defined during app launch.
final class OsimColorScheme extends ColorScheme {
  final OsimColor osimOrange;
  final OsimColor osimOrangePeach;
  final OsimColor osimBlue;
  final OsimColor osimBlueSky;
  final OsimColor osimBlueLight2;
  final OsimColor osimGreen;
  final OsimColor osimGreenMint;
  final OsimColor osimBackGround;
  final OsimColor osimBrown;
  final OsimColor osimBrown80;
  final OsimColor osimBrown50;
  final OsimColor osimBrown30;
  final OsimColor osimBrown10;
  final OsimColor osimTan;
  final OsimColor osimTan70;
  final OsimColor osimTan50;
  final OsimColor osimTan30;
  final OsimColor osimTan20;
  final OsimColor osimTan10;
  final OsimColor osimTan0;
  final OsimColor osimError;
  final OsimColor osimErrorLight;
  final OsimColor osimBluetoothBlue;
  final OsimColor osimSuccess;
  final OsimColor osimDarkRed;
  final OsimColor osimColourRangeBlue;
  final OsimColor osimColourRangeAqua;
  final OsimColor osimColourRangeForest;
  final OsimColor osimColourRangeOrange;
  final OsimColor osimColourRangeRed;
  final OsimColor osimColourRangeLavender;
  final OsimColor osimColourRangeOceanBlue;
  final OsimColor osimBlack;
  final OsimColor osimHexGrey80;
  final OsimColor osimHexGrey50;
  final OsimColor osimHexGrey30;
  final OsimColor osimHexGrey10;
  final OsimColor osimHexGrey5;
  final Color osimWhite;
  final Color osimGradientBeige;

  factory OsimColorScheme.light() {
    return OsimColorScheme(
      osimOrange: OsimColor(0xFFF37021),
      osimOrangePeach: OsimColor(0xFFFEE2CD),
      osimBlue: OsimColor(0xFF0072BC),
      osimBlueSky: OsimColor(0xFFDCE6F5),
      osimBlueLight2: OsimColor(0xFFEDF9F9),
      osimGreen: OsimColor(0xFF00AE4D),
      osimGreenMint: OsimColor(0xFFE5F1D4),
      osimBackGround: OsimColor(0xFFFAF9F5),
      osimBrown: OsimColor(0xFF514244),
      osimBrown80: OsimColor(0xFF8C8281),
      osimBrown50: OsimColor(0xFFA8A0A1),
      osimBrown30: OsimColor(0xFFCBC6C7),
      osimBrown10: OsimColor(0xFFE5E2DE),
      osimTan: OsimColor(0xFFA76D35),
      osimTan70: OsimColor(0xFFC59E78),
      osimTan50: OsimColor(0xFFE0D0B4),
      osimTan30: OsimColor(0xFFE9DDCF),
      osimTan20: OsimColor(0xFFF1E8DF),
      osimTan10: OsimColor(0xFFF0EEEB),
      osimTan0: OsimColor(0xFFF3F2EB),
      osimError: OsimColor(0xFFCC1E1E),
      osimErrorLight: OsimColor(0xFFF5E5E2),
      osimBluetoothBlue: OsimColor(0xFF007AFF),
      osimSuccess: OsimColor(0xFF00AE4D),
      osimDarkRed: OsimColor(0xFFAA2232),
      osimColourRangeBlue: OsimColor(0xFF2C98E2),
      osimColourRangeAqua: OsimColor(0xFF44BDA8),
      osimColourRangeForest: OsimColor(0xFF0E8938),
      osimColourRangeOrange: OsimColor(0xFFFA8701),
      osimColourRangeRed: OsimColor(0xFFE83D3B),
      osimColourRangeLavender: OsimColor(0xFF9974D4),
      osimColourRangeOceanBlue: OsimColor(0xFF2768E8),
      osimBlack: OsimColor(0xFF333333),
      osimHexGrey80: OsimColor(0xFF808080),
      osimHexGrey50: OsimColor(0xFFCCCCCC),
      osimHexGrey30: OsimColor(0xFFE5E5E5),
      osimHexGrey10: OsimColor(0xFFF2F2F2),
      osimHexGrey5: OsimColor(0xFFF8F8F8),
      osimWhite: const Color(0xFFFFFFFF),
      osimGradientBeige: const Color(0xFFFAFAF5),
    );
  }

  const OsimColorScheme({
    required this.osimOrange,
    required this.osimOrangePeach,
    required this.osimBlue,
    required this.osimBlueSky,
    required this.osimBlueLight2,
    required this.osimGreen,
    required this.osimGreenMint,
    required this.osimBackGround,
    required this.osimBrown,
    required this.osimBrown80,
    required this.osimBrown50,
    required this.osimBrown30,
    required this.osimBrown10,
    required this.osimTan,
    required this.osimTan70,
    required this.osimTan50,
    required this.osimTan30,
    required this.osimTan20,
    required this.osimTan10,
    required this.osimTan0,
    required this.osimError,
    required this.osimErrorLight,
    required this.osimBluetoothBlue,
    required this.osimSuccess,
    required this.osimDarkRed,
    required this.osimColourRangeBlue,
    required this.osimColourRangeAqua,
    required this.osimColourRangeForest,
    required this.osimColourRangeOrange,
    required this.osimColourRangeRed,
    required this.osimColourRangeLavender,
    required this.osimColourRangeOceanBlue,
    required this.osimBlack,
    required this.osimHexGrey80,
    required this.osimHexGrey50,
    required this.osimHexGrey30,
    required this.osimHexGrey10,
    required this.osimHexGrey5,
    required this.osimWhite,
    required this.osimGradientBeige,
  }) : super(
          // Reuse the old scheme color.
          brightness: Brightness.light,
          primary: const Color(0xFFF37021),
          onPrimary: const Color(0xFFFFFFFF),
          secondary: const Color(0xFF0672BA),
          onSecondary: const Color(0xFF514244),
          error: const Color(0xFFCC1E1E),
          onError: const Color(0xFFFFFFFF),
          background: const Color(0xFFFAF9F5),
          onBackground: const Color(0xFF514244),
          surface: const Color(0xFFFFFFFF),
          onSurface: const Color(0xFF514244),
        );
}

/// Defines a single color as well a color swatch with ten opacity of the color.
///
/// The color's opacity are referred to by index. The greater the index, the
/// higher the opacity. There are 10 valid indices: 10, 20, 30, ..., 100.
/// The value of this color should the same the value of opacity 50 and [opacity50].
class OsimColor extends ColorSwatch<int> {
  OsimColor(int primary) : super(primary, _generateSwatch(primary));

  /// The color with 10% opacity.
  Color get opacity10 => this[10]!;

  /// The color with 20% opacity.
  Color get opacity20 => this[20]!;

  /// The color with 30% opacity.
  Color get opacity30 => this[30]!;

  /// The color with 40% opacity.
  Color get opacity40 => this[40]!;

  /// The color with 50% opacity.
  Color get opacity50 => this[50]!;

  /// The color with 60% opacity.
  Color get opacity60 => this[60]!;

  /// The color with 70% opacity.
  Color get opacity70 => this[70]!;

  /// The color with 80% opacity.
  Color get opacity80 => this[80]!;

  /// The color with 90% opacity.
  Color get opacity90 => this[90]!;

  /// The orginal color.
  Color get opacity100 => this[100]!;
}

Map<int, Color> _generateSwatch(int code) =>
    {for (int i = 10; i <= 100; i += 10) i: Color(code).withOpacity(i / 100)};

ButtonStyle textButton(Color color, {TextStyle? textStyle}) {
  return TextButton.styleFrom(
    foregroundColor: color,
    textStyle: textStyle,
    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
  );
}
