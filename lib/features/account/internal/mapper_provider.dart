import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/mappers/account_mapper.dart';
import '../data/mappers_impl/account_mapper_impl.dart';

final mapperProvider = Provider<AccountMapper>(
      (ref) => AccountMapperImpl(),
);
