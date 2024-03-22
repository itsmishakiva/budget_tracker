import 'package:budget_tracker/features/operations/data/mappers/i_operation_mapper.dart';
import 'package:budget_tracker/features/operations/data/services/operation_list_service.dart';
import 'package:budget_tracker/features/operations/domain/entities/operation.dart';
import 'package:budget_tracker/features/operations/domain/repositories/operation_repository.dart';

class OperationRepositoryImpl implements OperationRepository {
  OperationRepositoryImpl(this._service, this._mapper);

  final OperationListService _service;
  final OperationMapper _mapper;

  @override
  Future<List<Operation>> getOperationList() async {
    final resultDTO = await _service.getOperationList();
    return resultDTO.map((e) => _mapper.fromDto(e)).toList();
  }
}
