import 'package:budget_tracker/features/check/data/mappers/check_mapper.dart';
import 'package:budget_tracker/features/check/data/services/check_service.dart';
import 'package:budget_tracker/features/check/domain/entities/check.dart';

import 'package:budget_tracker/features/check/domain/repositories/check_repository.dart';

class CheckRepositoryImpl implements CheckRepository {
  CheckRepositoryImpl(this._service, this._mapper);

  final CheckService _service;
  final CheckMapper _mapper;

  @override
  Future<List<Check>> getCheck() async {
    final resultDTO = await _service.getAccountList();
    return resultDTO.map((e) => _mapper.fromDto(e)).toList();
  }
}
