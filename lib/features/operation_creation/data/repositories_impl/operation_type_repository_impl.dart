import 'package:budget_tracker/features/operation_creation/data/mappers/i_operation_type_mapper.dart';
import 'package:budget_tracker/features/operation_creation/data/services/operation_type_list_service.dart';
import 'package:budget_tracker/features/operation_creation/domain/entities/operation_type.dart';
import 'package:budget_tracker/features/operation_creation/domain/repositories/operation_type_repository.dart';

class OperationTypeRepositoryImpl implements OperationTypeRepository {
  OperationTypeRepositoryImpl(this._service, this._mapper);

  final OperationTypeListService _service;
  final OperationTypeMapper _mapper;

  @override
  Future<List<OperationType>> getOperationType() async {
    final resultDTO = await _service.getOperationTypeList();
    return resultDTO.map((e) => _mapper.fromDto(e)).toList();
  }
}
