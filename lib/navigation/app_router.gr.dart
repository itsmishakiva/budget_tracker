// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:budget_tracker/features/operation_creation/presentation/view/srcreens/operation_creation_sum_screen.dart'
    as _i1;
import 'package:budget_tracker/features/operation_creation/presentation/view/srcreens/operation_creation_type_screen.dart'
    as _i2;
import 'package:budget_tracker/features/operation_list/presentation/view/screens/operation_list_screen.dart'
    as _i3;

abstract class $AppRouter extends _i4.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    OperationCreationSumRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.OperationCreationSumScreen(),
      );
    },
    OperationCreationTypeRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.OperationCreationTypeScreen(),
      );
    },
    OperationListRoute.name: (routeData) {
      return _i4.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.OperationListScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.OperationCreationSumScreen]
class OperationCreationSumRoute extends _i4.PageRouteInfo<void> {
  const OperationCreationSumRoute({List<_i4.PageRouteInfo>? children})
      : super(
          OperationCreationSumRoute.name,
          initialChildren: children,
        );

  static const String name = 'OperationCreationSumRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i2.OperationCreationTypeScreen]
class OperationCreationTypeRoute extends _i4.PageRouteInfo<void> {
  const OperationCreationTypeRoute({List<_i4.PageRouteInfo>? children})
      : super(
          OperationCreationTypeRoute.name,
          initialChildren: children,
        );

  static const String name = 'OperationCreationTypeRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}

/// generated route for
/// [_i3.OperationListScreen]
class OperationListRoute extends _i4.PageRouteInfo<void> {
  const OperationListRoute({List<_i4.PageRouteInfo>? children})
      : super(
          OperationListRoute.name,
          initialChildren: children,
        );

  static const String name = 'OperationListRoute';

  static const _i4.PageInfo<void> page = _i4.PageInfo<void>(name);
}
