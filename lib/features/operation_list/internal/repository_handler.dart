import 'package:budget_tracker/features/operation_list/data/repositories/operation_list_repository.dart';
import 'package:budget_tracker/features/operation_list/internal/mapper_handler.dart';
import 'package:budget_tracker/features/operation_list/internal/service_handler.dart';

class RepositoryHandler {
  static OperationListRepository getOperationListRepository() {
    final service = ServiceHandler.getMockOperationListService();
    final mapper = MapperHandler.getOperationMapper();
    return OperationListRepository(service, mapper);
  }
}
