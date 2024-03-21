// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:budget_tracker/features/operation_list/presentation/view/screens/operation_list_screen.dart'
    as _i1;
import 'package:budget_tracker/features/pin_code/presentation/check_pin_code/pin_code_screen.dart'
    as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    OperationListRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.OperationListScreen(),
      );
    },
    PinCodeRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.PinCodeScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.OperationListScreen]
class OperationListRoute extends _i3.PageRouteInfo<void> {
  const OperationListRoute({List<_i3.PageRouteInfo>? children})
      : super(
          OperationListRoute.name,
          initialChildren: children,
        );

  static const String name = 'OperationListRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.PinCodeScreen]
class PinCodeRoute extends _i3.PageRouteInfo<void> {
  const PinCodeRoute({List<_i3.PageRouteInfo>? children})
      : super(
          PinCodeRoute.name,
          initialChildren: children,
        );

  static const String name = 'PinCodeRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
