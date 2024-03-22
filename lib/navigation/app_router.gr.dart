// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:budget_tracker/features/operations/presentation/view/screens/operation_list_screen.dart'
    as _i2;
import 'package:budget_tracker/features/pin_code/presentation/check_pin_code/pin_code_screen.dart'
    as _i3;
import 'package:budget_tracker/features/pin_code/presentation/create_pin_code/create_pin_code_screen.dart'
    as _i1;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    CreatePinCodeRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.CreatePinCodeScreen(),
      );
    },
    OperationListRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.OperationListScreen(),
      );
    },
    PinCodeRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.PinCodeScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.CreatePinCodeScreen]
class CreatePinCodeRoute extends _i4.PageRouteInfo<void> {
  const CreatePinCodeRoute({List<_i4.PageRouteInfo>? children})
      : super(
          CreatePinCodeRoute.name,
          initialChildren: children,
        );

  static const String name = 'CreatePinCodeRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.OperationListScreen]
class OperationListRoute extends _i4.PageRouteInfo<void> {
  const OperationListRoute({List<_i4.PageRouteInfo>? children})
      : super(
          OperationListRoute.name,
          initialChildren: children,
        );

  static const String name = 'OperationListRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.PinCodeScreen]
class PinCodeRoute extends _i4.PageRouteInfo<void> {
  const PinCodeRoute({List<_i4.PageRouteInfo>? children})
      : super(
          PinCodeRoute.name,
          initialChildren: children,
        );

  static const String name = 'PinCodeRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
