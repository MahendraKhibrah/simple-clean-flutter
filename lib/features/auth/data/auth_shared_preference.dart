import 'dart:async';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:template/common/constants/shared_preference_keys.dart';

class AuthSharedPreference {
  Future<String?> getBearerToken() async {
    final pref = await SharedPreferences.getInstance();
    final token = pref.getString(SharedPreferenceKeys.bearerToken);
    return token == null ? null : 'Bearer $token';
  }

  FutureOr<void> saveBearerToken(String bearerToken) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setString(
      SharedPreferenceKeys.bearerToken,
      bearerToken,
    );
  }

  FutureOr<void> removeBearerToken() async {
    final pref = await SharedPreferences.getInstance();
    await pref.remove(SharedPreferenceKeys.bearerToken);
  }

  Future<int?> getOtpExpiryInMillis() async {
    final pref = await SharedPreferences.getInstance();
    return pref.getInt(SharedPreferenceKeys.otpExpiry);
  }

  FutureOr<void> saveOtpExpiryInMillis(int timeInMillis) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setInt(
      SharedPreferenceKeys.otpExpiry,
      timeInMillis,
    );
  }

  FutureOr<void> removeOtpExpiryInMillis() async {
    final pref = await SharedPreferences.getInstance();
    await pref.remove(SharedPreferenceKeys.otpExpiry);
  }

  FutureOr<void> saveRegistrationRequest(String registrationRequest) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setString(
      SharedPreferenceKeys.registrationRequest,
      registrationRequest,
    );
  }

  FutureOr<String?> getRegistrationRequest() async {
    final pref = await SharedPreferences.getInstance();
    return pref.getString(SharedPreferenceKeys.registrationRequest);
  }

  FutureOr<void> setSkipOnBoarding(bool value) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setBool(SharedPreferenceKeys.skipOnBoarding, value);
  }

  FutureOr<bool?> getSkipOnBoarding() async {
    final pref = await SharedPreferences.getInstance();
    return pref.getBool(SharedPreferenceKeys.skipOnBoarding);
  }
}
