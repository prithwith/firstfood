// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i23;
import 'package:fastfood/screen/auth/presentation/login_page.dart' as _i8;
import 'package:fastfood/screen/auth/presentation/reset_password_page.dart'
    as _i12;
import 'package:fastfood/screen/auth/presentation/signup_page.dart' as _i17;
import 'package:fastfood/screen/auth/presentation/verification_code_page.dart'
    as _i20;
import 'package:fastfood/screen/base/presentation/base_page.dart' as _i1;
import 'package:fastfood/screen/chats/presentation/chat_page.dart' as _i2;
import 'package:fastfood/screen/chats/presentation/users_page.dart' as _i19;
import 'package:fastfood/screen/discover/presentation/discover_page.dart'
    as _i5;
import 'package:fastfood/screen/favorite/presentation/favorite_page.dart'
    as _i6;
import 'package:fastfood/screen/orders/presentation/delivery_map_page.dart'
    as _i4;
import 'package:fastfood/screen/orders/presentation/order_page.dart' as _i10;
import 'package:fastfood/screen/profile/presentation/delivery_address_page.dart'
    as _i3;
import 'package:fastfood/screen/profile/presentation/my_profile_page.dart'
    as _i9;
import 'package:fastfood/screen/profile/presentation/profile_page.dart' as _i11;
import 'package:fastfood/screen/profile/presentation/settings_page.dart'
    as _i16;
import 'package:fastfood/screen/profile/presentation/wallet_page.dart' as _i21;
import 'package:fastfood/screen/restaurants/presentation/food_details_page.dart'
    as _i7;
import 'package:fastfood/screen/restaurants/presentation/restaurant_detalis_page.dart'
    as _i13;
import 'package:fastfood/screen/restaurants/presentation/restaurants_page.dart'
    as _i14;
import 'package:fastfood/screen/search/presentation/search_page.dart' as _i15;
import 'package:fastfood/screen/splash/presentation/splash_page.dart' as _i18;
import 'package:fastfood/screen/welcome/presentation/welcome_page.dart' as _i22;
import 'package:flutter/material.dart' as _i24;

abstract class $AppRouter extends _i23.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i23.PageFactory> pagesMap = {
    BaseRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.BasePage(),
      );
    },
    ChatRoute.name: (routeData) {
      final args = routeData.argsAs<ChatRouteArgs>();
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.ChatPage(
          key: args.key,
          chatRoomId: args.chatRoomId,
          reciverId: args.reciverId,
          userName: args.userName,
        ),
      );
    },
    DeliveryAddressRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.DeliveryAddressPage(),
      );
    },
    DeliveryMapRouteRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.DeliveryMapPagePage(),
      );
    },
    DiscoverRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.DiscoverPage(),
      );
    },
    FavoriteRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.FavoritePage(),
      );
    },
    FoodDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<FoodDetailsRouteArgs>();
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.FoodDetailsPage(
          key: args.key,
          id: args.id,
          name: args.name,
          price: args.price,
        ),
      );
    },
    LoginRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.LoginPage(),
      );
    },
    MyProfileRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.MyProfilePage(),
      );
    },
    OrderRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.OrderPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.ProfilePage(),
      );
    },
    ResetPasswordRoute.name: (routeData) {
      final args = routeData.argsAs<ResetPasswordRouteArgs>(
          orElse: () => const ResetPasswordRouteArgs());
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.ResetPasswordPage(
          key: args.key,
          email: args.email,
        ),
      );
    },
    RestaurantDetalisRoute.name: (routeData) {
      final args = routeData.argsAs<RestaurantDetalisRouteArgs>();
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i13.RestaurantDetalisPage(
          key: args.key,
          allDishes: args.allDishes,
        ),
      );
    },
    RestaurantsRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.RestaurantsPage(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.SearchPage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.SettingsPage(),
      );
    },
    SignupRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.SignupPage(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.SplashPage(),
      );
    },
    UsersRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.UsersPage(),
      );
    },
    VerificationCodeRoute.name: (routeData) {
      final args = routeData.argsAs<VerificationCodeRouteArgs>();
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i20.VerificationCodePage(
          key: args.key,
          email: args.email,
        ),
      );
    },
    WalletRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i21.WalletPage(),
      );
    },
    WelcomeRoute.name: (routeData) {
      return _i23.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i22.WelcomePage(),
      );
    },
  };
}

/// generated route for
/// [_i1.BasePage]
class BaseRoute extends _i23.PageRouteInfo<void> {
  const BaseRoute({List<_i23.PageRouteInfo>? children})
      : super(
          BaseRoute.name,
          initialChildren: children,
        );

  static const String name = 'BaseRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ChatPage]
class ChatRoute extends _i23.PageRouteInfo<ChatRouteArgs> {
  ChatRoute({
    _i24.Key? key,
    required String chatRoomId,
    required String reciverId,
    required String userName,
    List<_i23.PageRouteInfo>? children,
  }) : super(
          ChatRoute.name,
          args: ChatRouteArgs(
            key: key,
            chatRoomId: chatRoomId,
            reciverId: reciverId,
            userName: userName,
          ),
          initialChildren: children,
        );

  static const String name = 'ChatRoute';

  static const _i23.PageInfo<ChatRouteArgs> page =
      _i23.PageInfo<ChatRouteArgs>(name);
}

class ChatRouteArgs {
  const ChatRouteArgs({
    this.key,
    required this.chatRoomId,
    required this.reciverId,
    required this.userName,
  });

  final _i24.Key? key;

  final String chatRoomId;

  final String reciverId;

  final String userName;

  @override
  String toString() {
    return 'ChatRouteArgs{key: $key, chatRoomId: $chatRoomId, reciverId: $reciverId, userName: $userName}';
  }
}

/// generated route for
/// [_i3.DeliveryAddressPage]
class DeliveryAddressRoute extends _i23.PageRouteInfo<void> {
  const DeliveryAddressRoute({List<_i23.PageRouteInfo>? children})
      : super(
          DeliveryAddressRoute.name,
          initialChildren: children,
        );

  static const String name = 'DeliveryAddressRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i4.DeliveryMapPagePage]
class DeliveryMapRouteRoute extends _i23.PageRouteInfo<void> {
  const DeliveryMapRouteRoute({List<_i23.PageRouteInfo>? children})
      : super(
          DeliveryMapRouteRoute.name,
          initialChildren: children,
        );

  static const String name = 'DeliveryMapRouteRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i5.DiscoverPage]
class DiscoverRoute extends _i23.PageRouteInfo<void> {
  const DiscoverRoute({List<_i23.PageRouteInfo>? children})
      : super(
          DiscoverRoute.name,
          initialChildren: children,
        );

  static const String name = 'DiscoverRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i6.FavoritePage]
class FavoriteRoute extends _i23.PageRouteInfo<void> {
  const FavoriteRoute({List<_i23.PageRouteInfo>? children})
      : super(
          FavoriteRoute.name,
          initialChildren: children,
        );

  static const String name = 'FavoriteRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i7.FoodDetailsPage]
class FoodDetailsRoute extends _i23.PageRouteInfo<FoodDetailsRouteArgs> {
  FoodDetailsRoute({
    _i24.Key? key,
    required String id,
    required String name,
    required String price,
    List<_i23.PageRouteInfo>? children,
  }) : super(
          FoodDetailsRoute.name,
          args: FoodDetailsRouteArgs(
            key: key,
            id: id,
            name: name,
            price: price,
          ),
          initialChildren: children,
        );

  static const String name = 'FoodDetailsRoute';

  static const _i23.PageInfo<FoodDetailsRouteArgs> page =
      _i23.PageInfo<FoodDetailsRouteArgs>(name);
}

class FoodDetailsRouteArgs {
  const FoodDetailsRouteArgs({
    this.key,
    required this.id,
    required this.name,
    required this.price,
  });

  final _i24.Key? key;

  final String id;

  final String name;

  final String price;

  @override
  String toString() {
    return 'FoodDetailsRouteArgs{key: $key, id: $id, name: $name, price: $price}';
  }
}

/// generated route for
/// [_i8.LoginPage]
class LoginRoute extends _i23.PageRouteInfo<void> {
  const LoginRoute({List<_i23.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i9.MyProfilePage]
class MyProfileRoute extends _i23.PageRouteInfo<void> {
  const MyProfileRoute({List<_i23.PageRouteInfo>? children})
      : super(
          MyProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'MyProfileRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i10.OrderPage]
class OrderRoute extends _i23.PageRouteInfo<void> {
  const OrderRoute({List<_i23.PageRouteInfo>? children})
      : super(
          OrderRoute.name,
          initialChildren: children,
        );

  static const String name = 'OrderRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i11.ProfilePage]
class ProfileRoute extends _i23.PageRouteInfo<void> {
  const ProfileRoute({List<_i23.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i12.ResetPasswordPage]
class ResetPasswordRoute extends _i23.PageRouteInfo<ResetPasswordRouteArgs> {
  ResetPasswordRoute({
    _i24.Key? key,
    String? email,
    List<_i23.PageRouteInfo>? children,
  }) : super(
          ResetPasswordRoute.name,
          args: ResetPasswordRouteArgs(
            key: key,
            email: email,
          ),
          initialChildren: children,
        );

  static const String name = 'ResetPasswordRoute';

  static const _i23.PageInfo<ResetPasswordRouteArgs> page =
      _i23.PageInfo<ResetPasswordRouteArgs>(name);
}

class ResetPasswordRouteArgs {
  const ResetPasswordRouteArgs({
    this.key,
    this.email,
  });

  final _i24.Key? key;

  final String? email;

  @override
  String toString() {
    return 'ResetPasswordRouteArgs{key: $key, email: $email}';
  }
}

/// generated route for
/// [_i13.RestaurantDetalisPage]
class RestaurantDetalisRoute
    extends _i23.PageRouteInfo<RestaurantDetalisRouteArgs> {
  RestaurantDetalisRoute({
    _i24.Key? key,
    required List<dynamic> allDishes,
    List<_i23.PageRouteInfo>? children,
  }) : super(
          RestaurantDetalisRoute.name,
          args: RestaurantDetalisRouteArgs(
            key: key,
            allDishes: allDishes,
          ),
          initialChildren: children,
        );

  static const String name = 'RestaurantDetalisRoute';

  static const _i23.PageInfo<RestaurantDetalisRouteArgs> page =
      _i23.PageInfo<RestaurantDetalisRouteArgs>(name);
}

class RestaurantDetalisRouteArgs {
  const RestaurantDetalisRouteArgs({
    this.key,
    required this.allDishes,
  });

  final _i24.Key? key;

  final List<dynamic> allDishes;

  @override
  String toString() {
    return 'RestaurantDetalisRouteArgs{key: $key, allDishes: $allDishes}';
  }
}

/// generated route for
/// [_i14.RestaurantsPage]
class RestaurantsRoute extends _i23.PageRouteInfo<void> {
  const RestaurantsRoute({List<_i23.PageRouteInfo>? children})
      : super(
          RestaurantsRoute.name,
          initialChildren: children,
        );

  static const String name = 'RestaurantsRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i15.SearchPage]
class SearchRoute extends _i23.PageRouteInfo<void> {
  const SearchRoute({List<_i23.PageRouteInfo>? children})
      : super(
          SearchRoute.name,
          initialChildren: children,
        );

  static const String name = 'SearchRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i16.SettingsPage]
class SettingsRoute extends _i23.PageRouteInfo<void> {
  const SettingsRoute({List<_i23.PageRouteInfo>? children})
      : super(
          SettingsRoute.name,
          initialChildren: children,
        );

  static const String name = 'SettingsRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i17.SignupPage]
class SignupRoute extends _i23.PageRouteInfo<void> {
  const SignupRoute({List<_i23.PageRouteInfo>? children})
      : super(
          SignupRoute.name,
          initialChildren: children,
        );

  static const String name = 'SignupRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i18.SplashPage]
class SplashRoute extends _i23.PageRouteInfo<void> {
  const SplashRoute({List<_i23.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i19.UsersPage]
class UsersRoute extends _i23.PageRouteInfo<void> {
  const UsersRoute({List<_i23.PageRouteInfo>? children})
      : super(
          UsersRoute.name,
          initialChildren: children,
        );

  static const String name = 'UsersRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i20.VerificationCodePage]
class VerificationCodeRoute
    extends _i23.PageRouteInfo<VerificationCodeRouteArgs> {
  VerificationCodeRoute({
    _i24.Key? key,
    required String email,
    List<_i23.PageRouteInfo>? children,
  }) : super(
          VerificationCodeRoute.name,
          args: VerificationCodeRouteArgs(
            key: key,
            email: email,
          ),
          initialChildren: children,
        );

  static const String name = 'VerificationCodeRoute';

  static const _i23.PageInfo<VerificationCodeRouteArgs> page =
      _i23.PageInfo<VerificationCodeRouteArgs>(name);
}

class VerificationCodeRouteArgs {
  const VerificationCodeRouteArgs({
    this.key,
    required this.email,
  });

  final _i24.Key? key;

  final String email;

  @override
  String toString() {
    return 'VerificationCodeRouteArgs{key: $key, email: $email}';
  }
}

/// generated route for
/// [_i21.WalletPage]
class WalletRoute extends _i23.PageRouteInfo<void> {
  const WalletRoute({List<_i23.PageRouteInfo>? children})
      : super(
          WalletRoute.name,
          initialChildren: children,
        );

  static const String name = 'WalletRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}

/// generated route for
/// [_i22.WelcomePage]
class WelcomeRoute extends _i23.PageRouteInfo<void> {
  const WelcomeRoute({List<_i23.PageRouteInfo>? children})
      : super(
          WelcomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'WelcomeRoute';

  static const _i23.PageInfo<void> page = _i23.PageInfo<void>(name);
}
