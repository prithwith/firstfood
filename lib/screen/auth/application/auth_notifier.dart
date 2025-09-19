// ignore_for_file: unused_field

import 'package:dio/dio.dart';
import 'package:fastfood/core/infrastructure/dio_exceptions.dart';
import 'package:fastfood/core/infrastructure/hive_database.dart';
import 'package:fastfood/core/utils/toast.dart';
import 'package:fastfood/screen/auth/application/auth_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier(this._dio, this._hiveDataBase) : super(const AuthState());

  final HiveDatabase _hiveDataBase;
  final Dio _dio;

  TextEditingController loginEmailController = TextEditingController();
  TextEditingController loginPasswordController = TextEditingController();

  TextEditingController sighupNameController = TextEditingController();
  TextEditingController sighupEmailController = TextEditingController();
  TextEditingController sighupPasswordController = TextEditingController();

  TextEditingController resetPasswordEmailController = TextEditingController();

  TextEditingController verificationCodeController = TextEditingController();

  void loginVisibility() {
    state = state.copyWith(isLoginVisiable: !state.isLoginVisiable);
  }

  void sighupVisibility() {
    state = state.copyWith(isSignupVisiable: !state.isSignupVisiable);
  }

  void loginCheckbox() {
    state = state.copyWith(isLoginCheckbox: !state.isLoginCheckbox);
  }

  Future<void> setLoginDetails() async {
    loginEmailController.text =
        await _hiveDataBase.box.get(AppPreferenceKeys.email) ?? '';
    loginPasswordController.text =
        await _hiveDataBase.box.get(AppPreferenceKeys.password) ?? '';

    state = state.copyWith(
      isLoginCheckbox: loginEmailController.text.isNotEmpty,
    );
  }

  Future<void> login() async {
    if (state.isLoginCheckbox) {
      await _hiveDataBase.box.put(
        AppPreferenceKeys.email,
        loginEmailController.text,
      );

      await _hiveDataBase.box.put(
        AppPreferenceKeys.password,
        loginPasswordController.text,
      );
    } else {
      await _hiveDataBase.box.put(AppPreferenceKeys.email, "");

      await _hiveDataBase.box.put(AppPreferenceKeys.password, "");
    }
    state = state.copyWith();
  }

  Future<void> getProfile() async {
    try {
      state = state.copyWith(isLoginLoading: true);

      var headers = {
        'Accept': '*/*',
        'Content-Type': 'application/json',
        'X-Access-Token': _hiveDataBase.box.get(AppPreferenceKeys.token),
      };

      _dio.options.headers.addAll(headers);

      final response = await _dio.get<Map<String, dynamic>>('user/profile');

      if (response.statusCode == 200 && response.data != null) {
        // final user = UserModel.fromJson(response.data?["data"]);

        state = state.copyWith(isLoginLoading: false);
      } else {
        showToastMessage(response.data?["message"]);

        state = state.copyWith(isLoginLoading: false);
      }
    } on DioException catch (e) {
      final error = DioExceptions.fromDioError(e).message;
      showToastMessage(error, errorMessage: e.message ?? '');

      state = state.copyWith(isLoginLoading: false);
    }
  }

  // using firebase accessing google uthentication

  Future<void> signInWithGoogle({VoidCallback? onTap}) async {
    try {
      state = state.copyWith(isGoogleLoading: true);

      final GoogleSignIn googleSignIn = GoogleSignIn();
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

      if (googleUser == null) {
        // User canceled the login
        state = state.copyWith(isGoogleLoading: false);
        return;
      }

      final GoogleSignInAuthentication googleAuth =
          await googleUser.authentication;

      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Sign in with Firebase
      final UserCredential userCredential = await FirebaseAuth.instance
          .signInWithCredential(credential);

      final User? user = userCredential.user;

      if (user != null) {
        await _hiveDataBase.box.put(AppPreferenceKeys.name, user.displayName);
        await _hiveDataBase.box.put(AppPreferenceKeys.email, user.email);
        await _hiveDataBase.box.put(AppPreferenceKeys.uid, user.uid);

        onTap?.call();
        showToastMessage("Login successful with Google!");
      }

      state = state.copyWith(isGoogleLoading: false);
    } on FirebaseAuthException catch (e) {
      showToastMessage("Google sign-in failed", errorMessage: e.message ?? '');
      state = state.copyWith(isGoogleLoading: false);
    } catch (e) {
      showToastMessage("Unexpected error occurred", errorMessage: e.toString());
      state = state.copyWith(isGoogleLoading: false);
    }
  }

  // create new user name,email,password
  Future<void> signUpWithEmailAndPassword({VoidCallback? onTap}) async {
    try {
      state = state.copyWith(isSighupLoading: true);

      final String name = sighupNameController.text.trim();
      final String email = sighupEmailController.text.trim();
      final String password = sighupPasswordController.text.trim();

      // Firebase create account
      final UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      final User? user = userCredential.user;

      if (user != null) {
        onTap?.call();
        showToastMessage("✅ Account created successfully! Welcome, $name");
      } else {
        showToastMessage("⚠️ Account creation failed. Please try again.");
      }
      state = state.copyWith(isSighupLoading: false);
    } on FirebaseAuthException catch (e) {
      String message = "❌ Sign up failed.";
      if (e.code == 'email-already-in-use') {
        message = "❌ An account already exists with this email.";
      } else if (e.code == 'invalid-email') {
        message = "❌ Invalid email format.";
      } else if (e.code == 'weak-password') {
        message = "❌ Password is too weak. Please choose a stronger one.";
      }

      showToastMessage(message);
      state = state.copyWith(isSighupLoading: false);
    } catch (e) {
      showToastMessage("⚠️ Unexpected error: ${e.toString()}");
      state = state.copyWith(isSighupLoading: false);
    }
  }

  // sighn in with email password
  Future<void> signInWithEmailAndPassword({VoidCallback? onTap}) async {
    try {
      state = state.copyWith(isLoginLoading: true);

      final String email = loginEmailController.text.trim();
      final String password = loginPasswordController.text.trim();

      // Firebase sign-in with email & password
      final UserCredential userCredential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      final User? user = userCredential.user;

      if (user != null) {
        // Save user info into Hive
        await _hiveDataBase.box.put(
          AppPreferenceKeys.name,
          user.displayName ?? "",
        );
        await _hiveDataBase.box.put(AppPreferenceKeys.email, user.email ?? "");
        await _hiveDataBase.box.put(
          AppPreferenceKeys.token,
          await user.getIdToken(),
        );

        onTap?.call();

        showToastMessage("✅ Logged in as ${user.email}");
      } else {
        showToastMessage("⚠️ Login failed. Please try again.");
      }

      state = state.copyWith(isLoginLoading: false);
    } on FirebaseAuthException catch (e) {
      String message = "❌ Login failed.";
      if (e.code == 'user-not-found') {
        message = "❌ No account found for this email.";
      } else if (e.code == 'wrong-password') {
        message = "❌ Incorrect password. Please try again.";
      } else if (e.code == 'invalid-email') {
        message = "❌ Invalid email address format.";
      } else if (e.code == 'user-disabled') {
        message = "🚫 This account has been disabled.";
      }

      showToastMessage(message);
      state = state.copyWith(isLoginLoading: false);
    } catch (e) {
      showToastMessage("⚠️ Unexpected error: ${e.toString()}");
      state = state.copyWith(isLoginLoading: false);
    }
  }
}
