import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:budget_tracker/features/account/data/services/account_list_service.dart';
import 'package:budget_tracker/features/account/data/services_impl/mock_account_list_service.dart';

final serviceProvider = Provider<AccountListService>(
  (ref) => MockAccountListService(),
);