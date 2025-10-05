// ignore_for_file: unused_local_variable

import 'package:auto_route/annotations.dart';
import 'package:fastfood/core/style/app_colors.dart';
import 'package:fastfood/core/style/app_textstyle.dart';
import 'package:fastfood/screen/profile/shared/provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class WalletPage extends ConsumerStatefulWidget {
  const WalletPage({super.key});

  @override
  ConsumerState<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends ConsumerState<WalletPage> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final stateNotifier = ref.read(profileNotifierProvider.notifier);
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(profileNotifierProvider);
    final stateNotifier = ref.watch(profileNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.colorPrimary,
        iconTheme: IconThemeData(color: AppColors.colorWhite),
        title: Text(
          "Payment Methods",
          style: AppTextStyle.rubikTextRegular.copyWith(
            color: AppColors.colorWhite,
          ),
        ),
      ),
    );
  }
}
