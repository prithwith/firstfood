import 'package:auto_route/auto_route.dart';
import 'package:fastfood/core/infrastructure/hive_database.dart';
import 'package:fastfood/core/router/app_router.gr.dart';
import 'package:fastfood/core/shared/providers.dart';
import 'package:fastfood/core/style/app_assets.dart';
import 'package:fastfood/core/style/app_colors.dart';
import 'package:fastfood/screen/splash/application/splash_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class SplashPage extends ConsumerStatefulWidget {
  const SplashPage({super.key});

  @override
  ConsumerState<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ConsumerState<SplashPage> {
  final PushNotificationService _pushNotificationService =
      PushNotificationService();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _pushNotificationService.initNotifications();
      Future.delayed(const Duration(seconds: 2), navigate);
    });
  }

  Future<void> navigate() async {
    final hive = ref.read(hiveProvider);

    String userid = hive.box.get(AppPreferenceKeys.uid) ?? "";
    String email = hive.box.get(AppPreferenceKeys.email) ?? "";

    if (mounted && userid.isNotEmpty && email.isNotEmpty) {
      await AutoRouter.of(
        context,
      ).pushAndPopUntil(BaseRoute(), predicate: (_) => false);
    } else {
      if (!mounted) return;
      await AutoRouter.of(
        context,
      ).pushAndPopUntil(WelcomeRoute(), predicate: (_) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorPrimary,
      body: Center(
        child: Image.asset(
          "${AppAssets.appImages}app_icon.png",
          width: MediaQuery.sizeOf(context).width / 1.5,
        ),
      ),
    );
  }
}
