import 'package:budget_tracker/features/pin_code/data/repositories_impl/pin_code_repository_impl.dart';
import 'package:budget_tracker/features/pin_code/domain/repositories/pin_code_repository.dart';
import 'package:budget_tracker/features/pin_code/internal/pin_code_service_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final pinCodeRepositoryProvider = Provider<PinCodeRepository>(
  (ref) => PinCodeRepositoryImpl(
    ref.watch(pinCodeServiceProvider),
  ),
);
