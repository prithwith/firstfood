import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:fastfood/core/constants/app_urls.dart';
import 'package:fastfood/core/router/app_router.dart';
import 'package:fastfood/core/shared/providers.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oktoast/oktoast.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

void main() async {
  /// This is used to ensure that native code is successfully initialized
  WidgetsFlutterBinding.ensureInitialized();

  /// Firebase intrigation for social authantication,push notification
  Future.microtask(() {
    Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  });

  /// hide the keyboadrd while restart the app
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((
    _,
  ) async {
    SystemChannels.textInput.invokeMethod('TextInput.hide');
    runApp(const ProviderScope(child: MyApp()));
  });
}

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();

  ///print("Handling a background message: ${message.messageId}");
}

final initializationProvider = FutureProvider<Unit>((ref) async {
  await ref.read(hiveProvider).init();

  ref.read(dioProvider)
    ..options = BaseOptions(
      connectTimeout: const Duration(seconds: 60),
      receiveTimeout: const Duration(seconds: 60),
      validateStatus: (status) => true,
      baseUrl: AppUrls.baseUrl,
    )
    ..interceptors;

  ref
      .read(dioProvider)
      .interceptors
      .add(PrettyDioLogger(requestHeader: true, requestBody: true));

  return unit;
});

class MyApp extends ConsumerWidget {
  const MyApp({super.key});
  static final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(initializationProvider, (_, __) {});
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarBrightness: Brightness.dark),
    );

    return ScreenUtilInit(
      designSize: const Size(393, 852),
      useInheritedMediaQuery: true,
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return OKToast(
          child: MaterialApp.router(
            title: 'FastFood',
            theme: ThemeData(
              sliderTheme: const SliderThemeData(
                showValueIndicator: ShowValueIndicator.always,
              ),
              pageTransitionsTheme: const PageTransitionsTheme(
                builders: {
                  TargetPlatform.android: CupertinoPageTransitionsBuilder(),
                  TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
                },
              ),
              useMaterial3: true,
            ),
            debugShowCheckedModeBanner: false,
            routerConfig: _appRouter.config(),
          ),
        );
      },
    );
  }
}
