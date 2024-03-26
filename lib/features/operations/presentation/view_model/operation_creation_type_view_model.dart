import 'package:budget_tracker/features/categories/domain/entities/category.dart';
import 'package:budget_tracker/features/categories/domain/repositories/category_repository.dart';
import 'package:budget_tracker/features/categories/internal/caretory_repository_provider.dart';
import 'package:budget_tracker/features/operations/domain/entities/new_operation.dart';
import 'package:budget_tracker/features/operations/presentation/view_model/operation_creation_type_view_state.dart';
import 'package:budget_tracker/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:budget_tracker/features/operations/presentation/view_model/operation_creation_sum_view_model.dart';
import 'package:logging/logging.dart';

final operationCreationTypeViewModelProvider = StateNotifierProvider<
    OperationCreationTypeViewModel, OperationCreationTypeViewState>(
  (ref) => OperationCreationTypeViewModel(
    OperationCreationTypeViewLoadingState(),
    ref.read(categoryRepositoryProvider),
    ref.read(operationCreationSumViewModelProvider.notifier).setSum(),
  )..loadData(),
);

class OperationCreationTypeViewModel
    extends StateNotifier<OperationCreationTypeViewState> {
  final CategoryRepository _repository;
  final String _sum;

  OperationCreationTypeViewModel(
    OperationCreationTypeViewState state,
    this._repository,
    this._sum,
  ) : super(state);

  Future<void> loadData() async {
    try {
      Map<int, Category> categoriesData = await _repository.getCategories();

      state = OperationCreationTypeViewDataState(
        data: categoriesData,
        newOperation: NewOperation(
          sum: double.parse(_sum.replaceAll(',', '.')),
          incoming: false,
          category: categoriesData[1],
        ),
      );
    } catch (e) {
      logger.log(Level.WARNING, e);
      state = OperationCreationTypeViewErrorState();
    }
  }

  void changeIncomeType(bool value) {
    final modelState = state as OperationCreationTypeViewDataState;
    state = OperationCreationTypeViewDataState(
      data: modelState.data,
      newOperation: NewOperation(
        sum: modelState.newOperation.sum,
        incoming: value,
        category: modelState.newOperation.category,
      ),
    );
  }

  bool returnIncomeValue() {
    return (state as OperationCreationTypeViewDataState).newOperation.incoming;
  }

  void selectCategory(Category category) {
    final modelState = state as OperationCreationTypeViewDataState;
    state = OperationCreationTypeViewDataState(
      data: modelState.data,
      newOperation: NewOperation(
        sum: modelState.newOperation.sum,
        incoming: modelState.newOperation.incoming,
        category: category,
      ),
    );
  }

  Category returnSelectedCategory() {
    return (state as OperationCreationTypeViewDataState).newOperation.category!;
  }
}
