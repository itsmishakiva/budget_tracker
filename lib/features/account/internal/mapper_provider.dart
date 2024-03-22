import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:budget_tracker/features/account/data/mappers/account_mapper.dart';
import 'package:budget_tracker/features/account/data/mappers_impl/account_mapper_impl.dart';

final mapperProvider = Provider<AccountMapper>(
  (ref) => AccountMapperImpl(),
);
