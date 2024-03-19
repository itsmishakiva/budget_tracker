import 'package:budget_tracker/features/operation_list/data/i_mappers/i_operation_mapper.dart';
import 'package:budget_tracker/features/operation_list/data/i_services/i_operation_list_service.dart';
import 'package:budget_tracker/features/operation_list/domain/entities/operation.dart';
import 'package:budget_tracker/features/operation_list/domain/i_repositories/i_operation_list_repository.dart';

class OperationListRepository implements IOperationListRepository {
  OperationListRepository(this._service, this._mapper);

  final IOperationListService _service;
  final IOperationMapper _mapper;

  @override
  Future<List<Operation>> getOperationList() async {
    final resultDTO = await _service.getOperationList();
    return resultDTO.map((e) => _mapper.fromDto(e)).toList();
  }
}
