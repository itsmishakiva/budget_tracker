import 'package:budget_tracker/features/check/data/mappers/check_mapper.dart';
import 'package:budget_tracker/features/check/data/mappers_impl/check_mapper_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final checkMapperProvider = Provider<CheckMapper>(
  (ref) => CheckMapperImpl(),
);
