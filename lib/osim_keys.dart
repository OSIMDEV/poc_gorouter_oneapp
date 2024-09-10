import 'package:flutter/foundation.dart';

/// This class is a centralised place to store [ValueKey] for UI widget in the app.
///
/// The keys will be referred in integration testing.
abstract final class OsimKeys {
  /// Login page
  static const accountTextInput = ValueKey('accountTextInput');
  static const passwordTextInput = ValueKey('passwordTextInput');
  static const privacyPolicyCheckbox = ValueKey('privacyPolicyCheckbox');
  static const loginButton = ValueKey('loginButton');

  /// Home page
  static const wellbeingTabItem = ValueKey('wellbeingTabItem');
  static const deviceTabItem = ValueKey('deviceTabItem');
  static const profileTabItem = ValueKey('profileTabItem');

  /// Device page
  static const createProductButton = ValueKey('createProductButton');

  static const cannotScanQrCodeButton = ValueKey('cannotScanQrCodeButton');
  static const productSnTextInput = ValueKey('productSnTextInput');
  static const confirmRegisterProductButton =
      ValueKey('confirmRegisterProductButton');
}
