import 'package:budget_tracker/core/internal/secure_storage_provider.dart';
import 'package:budget_tracker/features/pin_code/data/services/pin_code_service.dart';
import 'package:budget_tracker/features/pin_code/data/services_impl/pin_code_service_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final pinCodeServiceProvider = Provider<PinCodeService>(
  (ref) => PinCodeServiceImpl(
    ref.watch(secureStorageProvider),
  ),
);
