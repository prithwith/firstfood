// ignore_for_file: unused_field

import 'package:dio/dio.dart';
import 'package:fastfood/core/infrastructure/hive_database.dart';
import 'package:fastfood/screen/profile/application/profile_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileNotifier extends StateNotifier<ProfileState> {
  ProfileNotifier(this._dio, this._hiveDataBase) : super(const ProfileState());

  final HiveDatabase _hiveDataBase;
  final Dio _dio;

  Future<void> openGmail(String email) async {
    final Uri gmailUri = Uri(
      scheme: 'mailto',
      path: email,
      query: Uri.encodeFull('subject=Hello&body=Hi there,'),
    );

    if (!await launchUrl(gmailUri, mode: LaunchMode.externalApplication)) {
      throw 'Could not open Gmail';
    }
  }
}
