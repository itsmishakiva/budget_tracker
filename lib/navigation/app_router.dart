import 'package:auto_route/auto_route.dart';
import 'package:budget_tracker/navigation/app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: OperationCreationSumRoute.page,
          initial: true,
        ),
      ];
}
