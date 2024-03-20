import 'package:budget_tracker/navigation/app_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final appRouterProvider = Provider<AppRouter>(
  (ref) => AppRouter(),
);
