// ignore_for_file: unused_field

import 'package:dio/dio.dart';
import 'package:fastfood/core/infrastructure/hive_database.dart';
import 'package:fastfood/core/model/user_model.dart';
import 'package:fastfood/core/utils/toast.dart';
import 'package:fastfood/screen/base/application/base_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class BaseNotifier extends StateNotifier<BaseState> {
  BaseNotifier(this._dio, this._hiveDataBase) : super(const BaseState());

  final HiveDatabase _hiveDataBase;
  final Dio _dio;

  void updateBottomIndex(int index) {
    state = state.copyWith(bottomNavIndex: index);
  }

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController numberController = TextEditingController();
  final TextEditingController address1Controller = TextEditingController();
  final TextEditingController address2Controller = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController zipController = TextEditingController();

  Future<void> getUserInfo() async {
    final UserModel dummyUsersInfo = UserModel(
      name: "Prithwith Sahoo",
      email: "windows000x@example.com",
      phone: "+91 9878456532",
      profileImageUrl: "https://placehold.co/100x100/A0BFFF/FFFFFF/png?text=JD",
      defaultAddressLine1: "123 Main Street",
      defaultAddressLine2: "Apt 4B",
      defaultAddressCity: "Springfield, IL 62704",
      defaultAddressZip: "USA",
    );

    state = state.copyWith(currentUser: dummyUsersInfo);

    nameController.text = state.currentUser?.name ?? "";
    emailController.text = state.currentUser?.email ?? "";
    numberController.text = state.currentUser?.phone ?? "";
    address1Controller.text = state.currentUser?.defaultAddressLine1 ?? "";
    address2Controller.text = state.currentUser?.defaultAddressLine2 ?? "";
    cityController.text = state.currentUser?.defaultAddressCity ?? "";
    zipController.text = state.currentUser?.defaultAddressZip ?? "";
  }

  void updateProfile({VoidCallback? onTap}) {
    final UserModel dummyUpdatedUsersInfo = UserModel(
      name: nameController.text,
      email: emailController.text,
      phone: numberController.text,
      defaultAddressLine1: address1Controller.text,
      defaultAddressLine2: address2Controller.text,
      defaultAddressCity: cityController.text,
      defaultAddressZip: zipController.text,
    );

    state = state.copyWith(currentUser: dummyUpdatedUsersInfo);

    showToastMessage("Profile update Successfull");
    onTap?.call();
  }
}
