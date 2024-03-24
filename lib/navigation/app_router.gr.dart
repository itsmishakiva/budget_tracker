// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:budget_tracker/features/analytics/presentation/view/sreens/analytics_screen.dart'
    as _i1;
import 'package:budget_tracker/features/home/presentation/view/screens/home_screen.dart'
    as _i3;
import 'package:budget_tracker/features/operations/presentation/view/screens/operation_creation_sum_screen.dart'
    as _i4;
import 'package:budget_tracker/features/operations/presentation/view/screens/operation_creation_type_screen.dart'
    as _i5;
import 'package:budget_tracker/features/operations/presentation/view/screens/operation_list_screen.dart'
    as _i6;
import 'package:budget_tracker/features/pin_code/presentation/check_pin_code/pin_code_screen.dart'
    as _i7;
import 'package:budget_tracker/features/pin_code/presentation/create_pin_code/create_pin_code_screen.dart'
    as _i2;
import 'package:budget_tracker/features/pin_code/presentation/root_pin_code/root_pin_code_screen.dart'
    as _i8;
import 'package:flutter/material.dart' as _i10;

abstract class $AppRouter extends _i9.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    AnalyticsRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AnalyticsScreen(),
      );
    },
    CreatePinCodeRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.CreatePinCodeScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.HomeScreen(key: args.key),
      );
    },
    OperationCreationSumRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.OperationCreationSumScreen(),
      );
    },
    OperationCreationTypeRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.OperationCreationTypeScreen(),
      );
    },
    OperationListRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.OperationListScreen(),
      );
    },
    PinCodeRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.PinCodeScreen(),
      );
    },
    RootPinCodeRoute.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.RootPinCodeScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.AnalyticsScreen]
class AnalyticsRoute extends _i9.PageRouteInfo<void> {
  const AnalyticsRoute({List<_i9.PageRouteInfo>? children})
      : super(
          AnalyticsRoute.name,
          initialChildren: children,
        );

  static const String name = 'AnalyticsRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i2.CreatePinCodeScreen]
class CreatePinCodeRoute extends _i9.PageRouteInfo<void> {
  const CreatePinCodeRoute({List<_i9.PageRouteInfo>? children})
      : super(
          CreatePinCodeRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreatePinCodeRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomeScreen]
class HomeRoute extends _i9.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i10.Key? key,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i9.PageInfo<HomeRouteArgs> page =
      _i9.PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final _i10.Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i4.OperationCreationSumScreen]
class OperationCreationSumRoute extends _i9.PageRouteInfo<void> {
  const OperationCreationSumRoute({List<_i9.PageRouteInfo>? children})
      : super(
          OperationCreationSumRoute.name,
          initialChildren: children,
        );

  static const String name = 'OperationCreationSumRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i5.OperationCreationTypeScreen]
class OperationCreationTypeRoute extends _i9.PageRouteInfo<void> {
  const OperationCreationTypeRoute({List<_i9.PageRouteInfo>? children})
      : super(
          OperationCreationTypeRoute.name,
          initialChildren: children,
        );

  static const String name = 'OperationCreationTypeRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i6.OperationListScreen]
class OperationListRoute extends _i9.PageRouteInfo<void> {
  const OperationListRoute({List<_i9.PageRouteInfo>? children})
      : super(
          OperationListRoute.name,
          initialChildren: children,
        );

  static const String name = 'OperationListRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i7.PinCodeScreen]
class PinCodeRoute extends _i9.PageRouteInfo<void> {
  const PinCodeRoute({List<_i9.PageRouteInfo>? children})
      : super(
          PinCodeRoute.name,
          initialChildren: children,
        );

  static const String name = 'PinCodeRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i8.RootPinCodeScreen]
class RootPinCodeRoute extends _i9.PageRouteInfo<void> {
  const RootPinCodeRoute({List<_i9.PageRouteInfo>? children})
      : super(
          RootPinCodeRoute.name,
          initialChildren: children,
        );

  static const String name = 'RootPinCodeRoute';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}
