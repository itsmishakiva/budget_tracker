import 'package:budget_tracker/features/check/data/services/check_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:budget_tracker/features/check/data/services_impl/mock_check_service.dart';

final serviceProvider = Provider<CheckService>(
  (ref) => MockCheckService(),
);
