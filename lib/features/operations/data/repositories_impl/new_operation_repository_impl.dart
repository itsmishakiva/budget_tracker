import 'package:budget_tracker/features/operations/data/mappers/new_operation_mapper.dart';
import 'package:budget_tracker/features/operations/data/services/new_operation_service.dart';
import 'package:budget_tracker/features/operations/domain/entities/new_operation.dart';
import 'package:budget_tracker/features/operations/domain/repositories/new_operation_repository.dart';

class NewOperationRepositoryImpl implements NewOperationRepository {
  NewOperationRepositoryImpl(this._service, this._mapper);

  final NewOperationService _service;
  final NewOperationMapper _mapper;

  @override
  Future<int> setOperation(NewOperation newOperation) async {
    return await _service.setOperation(_mapper.toDto(newOperation));
  }
}
