import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Page,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: SplashRoute.page, initial: true),
    AutoRoute(page: WelcomeRoute.page),
    AutoRoute(page: LoginRoute.page),
    AutoRoute(page: ResetPasswordRoute.page),
    AutoRoute(page: SignupRoute.page),
    AutoRoute(page: VerificationCodeRoute.page),
    AutoRoute(page: BaseRoute.page),
    AutoRoute(page: DiscoverRoute.page),
    AutoRoute(page: RestaurantsRoute.page),
    AutoRoute(page: SearchRoute.page),
    AutoRoute(page: FavoriteRoute.page),
    AutoRoute(page: ProfileRoute.page),
    AutoRoute(page: MyProfileRoute.page),
    AutoRoute(page: DeliveryAddressRoute.page),
    AutoRoute(page: WalletRoute.page),
    AutoRoute(page: DeliveryMapRouteRoute.page),
    AutoRoute(page: OrderRoute.page),
    AutoRoute(page: FoodDetailsRoute.page),
    AutoRoute(page: RestaurantDetalisRoute.page),
  ];
}
