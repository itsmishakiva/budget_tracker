import 'package:auto_route/auto_route.dart';
import 'package:budget_tracker/navigation/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: RootPinCodeRoute.page,
          path: '/pin',
          initial: true,
        ),
        AutoRoute(
          page: OperationCreationSumRoute.page,
          path: '/operation_creation_sum',
        ),
        AutoRoute(
          page: OperationCreationTypeRoute.page,
          path: '/operation_creation_type',
        ),
        AutoRoute(
          page: OperationListRoute.page,
          path: '/operations',
        ),
        AutoRoute(
          page: HomeRoute.page,
          path: '/home',
        ),
        AutoRoute(
          page: AnalyticsRoute.page,
          path: '/analytics',
        ),
      ];
}
