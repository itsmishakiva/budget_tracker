import 'package:auto_route/auto_route.dart';
import 'package:budget_tracker/navigation/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: PinCodeRoute.page,
          path: '/pin',
        ),
        AutoRoute(
          page: CreatePinCodeRoute.page,
          path: '/create_pin',
          initial: true,
        ),
        AutoRoute(
          page: OperationListRoute.page,
          path: '/operations',
        ),
      ];
}
