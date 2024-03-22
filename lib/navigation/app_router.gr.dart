// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:budget_tracker/features/home/presentation/view/screens/home_screen.dart'
    as _i2;
import 'package:budget_tracker/features/operations/presentation/view/screens/operation_list_screen.dart'
    as _i3;
import 'package:budget_tracker/features/pin_code/presentation/check_pin_code/pin_code_screen.dart'
    as _i4;
import 'package:budget_tracker/features/pin_code/presentation/create_pin_code/create_pin_code_screen.dart'
    as _i1;
import 'package:flutter/material.dart' as _i6;

abstract class $AppRouter extends _i5.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    CreatePinCodeRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CreatePinCodeScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      final args =
          routeData.argsAs<HomeRouteArgs>(orElse: () => const HomeRouteArgs());
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.HomeScreen(key: args.key),
      );
    },
    OperationListRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.OperationListScreen(),
      );
    },
    PinCodeRoute.name: (routeData) {
      return _i5.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.PinCodeScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.CreatePinCodeScreen]
class CreatePinCodeRoute extends _i5.PageRouteInfo<void> {
  const CreatePinCodeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          CreatePinCodeRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreatePinCodeRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i5.PageRouteInfo<HomeRouteArgs> {
  HomeRoute({
    _i6.Key? key,
    List<_i5.PageRouteInfo>? children,
  }) : super(
          HomeRoute.name,
          args: HomeRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i5.PageInfo<HomeRouteArgs> page =
      _i5.PageInfo<HomeRouteArgs>(name);
}

class HomeRouteArgs {
  const HomeRouteArgs({this.key});

  final _i6.Key? key;

  @override
  String toString() {
    return 'HomeRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.OperationListScreen]
class OperationListRoute extends _i5.PageRouteInfo<void> {
  const OperationListRoute({List<_i5.PageRouteInfo>? children})
      : super(
          OperationListRoute.name,
          initialChildren: children,
        );

  static const String name = 'OperationListRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}

/// generated route for
/// [_i4.PinCodeScreen]
class PinCodeRoute extends _i5.PageRouteInfo<void> {
  const PinCodeRoute({List<_i5.PageRouteInfo>? children})
      : super(
          PinCodeRoute.name,
          initialChildren: children,
        );

  static const String name = 'PinCodeRoute';

  static const _i5.PageInfo<void> page = _i5.PageInfo<void>(name);
}
