// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:budget_tracker/features/home/presentation/view/screens/home_screen.dart'
    as _i2;
import 'package:budget_tracker/features/operations/presentation/view/screens/operation_creation_sum_screen.dart'
    as _i3;
import 'package:budget_tracker/features/operations/presentation/view/screens/operation_creation_type_screen.dart'
    as _i4;
import 'package:budget_tracker/features/operations/presentation/view/screens/operation_list_screen.dart'
    as _i5;
import 'package:budget_tracker/features/pin_code/presentation/check_pin_code/pin_code_screen.dart'
    as _i6;
import 'package:budget_tracker/features/pin_code/presentation/create_pin_code/create_pin_code_screen.dart'
    as _i1;
import 'package:budget_tracker/features/pin_code/presentation/root_pin_code/root_pin_code_screen.dart'
    as _i7;
import 'package:flutter/material.dart' as _i9;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    CreatePinCodeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CreatePinCodeScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.HomeScreen(key: args.key),
      );
    },
    OperationCreationSumRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.OperationCreationSumScreen(),
      );
    },
    OperationCreationTypeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.OperationCreationTypeScreen(),
      );
    },
    OperationListRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.OperationListScreen(),
      );
    },
    PinCodeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.PinCodeScreen(),
      );
    },
    RootPinCodeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.RootPinCodeScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.CreatePinCodeScreen]
class CreatePinCodeRoute extends _i8.PageRouteInfo<void> {
  const CreatePinCodeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          CreatePinCodeRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreatePinCodeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i8.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i9.Key? key,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i8.PageInfo<HomeRouteArgs> page =
      _i8.PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final _i9.Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.OperationCreationSumScreen]
class OperationCreationSumRoute extends _i8.PageRouteInfo<void> {
  const OperationCreationSumRoute({List<_i8.PageRouteInfo>? children})
      : super(
          OperationCreationSumRoute.name,
          initialChildren: children,
        );

  static const String name = 'OperationCreationSumRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.OperationCreationTypeScreen]
class OperationCreationTypeRoute extends _i8.PageRouteInfo<void> {
  const OperationCreationTypeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          OperationCreationTypeRoute.name,
          initialChildren: children,
        );

  static const String name = 'OperationCreationTypeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.OperationListScreen]
class OperationListRoute extends _i8.PageRouteInfo<void> {
  const OperationListRoute({List<_i8.PageRouteInfo>? children})
      : super(
          OperationListRoute.name,
          initialChildren: children,
        );

  static const String name = 'OperationListRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.PinCodeScreen]
class PinCodeRoute extends _i8.PageRouteInfo<void> {
  const PinCodeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          PinCodeRoute.name,
          initialChildren: children,
        );

  static const String name = 'PinCodeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.RootPinCodeScreen]
class RootPinCodeRoute extends _i8.PageRouteInfo<void> {
  const RootPinCodeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          RootPinCodeRoute.name,
          initialChildren: children,
        );

  static const String name = 'RootPinCodeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}
