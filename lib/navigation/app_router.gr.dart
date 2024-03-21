// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:budget_tracker/features/operation_creation/presentation/view/srcreens/operation_creation_i_screen.dart'
    as _i1;
import 'package:budget_tracker/features/operation_list/presentation/view/screens/operation_list_screen.dart'
    as _i2;

abstract class $AppRouter extends _i3.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    OperationCreationIRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.OperataionCreationIScreen(),
      );
    },
    OperationListRoute.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.OperationListScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.OperataionCreationIScreen]
class OperationCreationIRoute extends _i3.PageRouteInfo<void> {
  const OperationCreationIRoute({List<_i3.PageRouteInfo>? children})
      : super(
          OperationCreationIRoute.name,
          initialChildren: children,
        );

  static const String name = 'OperationCreationIRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.OperationListScreen]
class OperationListRoute extends _i3.PageRouteInfo<void> {
  const OperationListRoute({List<_i3.PageRouteInfo>? children})
      : super(
          OperationListRoute.name,
          initialChildren: children,
        );

  static const String name = 'OperationListRoute';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
