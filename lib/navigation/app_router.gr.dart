// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:budget_tracker/features/analytics/presentation/view/sreens/analytics_screen.dart'
    as _i1;
import 'package:budget_tracker/features/auth/presentation/root/auth_screen.dart'
    as _i2;
import 'package:budget_tracker/features/home/presentation/view/screens/home_screen.dart'
    as _i4;
import 'package:budget_tracker/features/operations/presentation/view/screens/operation_creation_result_screen.dart'
    as _i5;
import 'package:budget_tracker/features/operations/presentation/view/screens/operation_creation_sum_screen.dart'
    as _i6;
import 'package:budget_tracker/features/operations/presentation/view/screens/operation_creation_type_screen.dart'
    as _i7;
import 'package:budget_tracker/features/operations/presentation/view/screens/operation_list_screen.dart'
    as _i8;
import 'package:budget_tracker/features/pin_code/presentation/check_pin_code/pin_code_screen.dart'
    as _i9;
import 'package:budget_tracker/features/pin_code/presentation/create_pin_code/create_pin_code_screen.dart'
    as _i3;
import 'package:budget_tracker/features/pin_code/presentation/root_pin_code/root_pin_code_screen.dart'
    as _i10;
import 'package:flutter/material.dart' as _i12;

abstract class $AppRouter extends _i11.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    AnalyticsRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AnalyticsScreen(),
      );
    },
    AuthRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AuthScreen(),
      );
    },
    CreatePinCodeRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.CreatePinCodeScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.HomeScreen(key: args.key),
      );
    },
    OperationCreationResultRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.OperationCreationResultScreen(),
      );
    },
    OperationCreationSumRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.OperationCreationSumScreen(),
      );
    },
    OperationCreationTypeRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.OperationCreationTypeScreen(),
      );
    },
    OperationListRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.OperationListScreen(),
      );
    },
    PinCodeRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.PinCodeScreen(),
      );
    },
    RootPinCodeRoute.name: (routeData) {
      return _i11.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.RootPinCodeScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AnalyticsScreen]
class AnalyticsRoute extends _i11.PageRouteInfo<void> {
  const AnalyticsRoute({List<_i11.PageRouteInfo>? children})
      : super(
          AnalyticsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AnalyticsRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AuthScreen]
class AuthRoute extends _i11.PageRouteInfo<void> {
  const AuthRoute({List<_i11.PageRouteInfo>? children})
      : super(
          AuthRoute.name,
          initialChildren: children,
        );

  static const String name = 'AuthRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CreatePinCodeScreen]
class CreatePinCodeRoute extends _i11.PageRouteInfo<void> {
  const CreatePinCodeRoute({List<_i11.PageRouteInfo>? children})
      : super(
          CreatePinCodeRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreatePinCodeRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i4.HomeScreen]
class HomeRoute extends _i11.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i12.Key? key,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i11.PageInfo<HomeRouteArgs> page =
      _i11.PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final _i12.Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i5.OperationCreationResultScreen]
class OperationCreationResultRoute extends _i11.PageRouteInfo<void> {
  const OperationCreationResultRoute({List<_i11.PageRouteInfo>? children})
      : super(
          OperationCreationResultRoute.name,
          initialChildren: children,
        );

  static const String name = 'OperationCreationResultRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i6.OperationCreationSumScreen]
class OperationCreationSumRoute extends _i11.PageRouteInfo<void> {
  const OperationCreationSumRoute({List<_i11.PageRouteInfo>? children})
      : super(
          OperationCreationSumRoute.name,
          initialChildren: children,
        );

  static const String name = 'OperationCreationSumRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i7.OperationCreationTypeScreen]
class OperationCreationTypeRoute extends _i11.PageRouteInfo<void> {
  const OperationCreationTypeRoute({List<_i11.PageRouteInfo>? children})
      : super(
          OperationCreationTypeRoute.name,
          initialChildren: children,
        );

  static const String name = 'OperationCreationTypeRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i8.OperationListScreen]
class OperationListRoute extends _i11.PageRouteInfo<void> {
  const OperationListRoute({List<_i11.PageRouteInfo>? children})
      : super(
          OperationListRoute.name,
          initialChildren: children,
        );

  static const String name = 'OperationListRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i9.PinCodeScreen]
class PinCodeRoute extends _i11.PageRouteInfo<void> {
  const PinCodeRoute({List<_i11.PageRouteInfo>? children})
      : super(
          PinCodeRoute.name,
          initialChildren: children,
        );

  static const String name = 'PinCodeRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}

/// generated route for
/// [_i10.RootPinCodeScreen]
class RootPinCodeRoute extends _i11.PageRouteInfo<void> {
  const RootPinCodeRoute({List<_i11.PageRouteInfo>? children})
      : super(
          RootPinCodeRoute.name,
          initialChildren: children,
        );

  static const String name = 'RootPinCodeRoute';

  static const _i11.PageInfo<void> page = _i11.PageInfo<void>(name);
}
