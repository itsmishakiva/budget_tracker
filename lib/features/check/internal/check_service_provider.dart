import 'package:budget_tracker/features/check/data/services/check_service.dart';
import 'package:budget_tracker/features/check/data/services_impl/remote_check_service.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final checkServiceProvider = Provider<CheckService>(
  (ref) => RemoteCheckService(),
);
