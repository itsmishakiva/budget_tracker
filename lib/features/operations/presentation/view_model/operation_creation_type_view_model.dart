import 'package:budget_tracker/features/categories/domain/entities/category.dart';
import 'package:budget_tracker/features/categories/domain/repositories/category_repository.dart';
import 'package:budget_tracker/features/categories/internal/caretory_repository_provider.dart';
import 'package:budget_tracker/features/operations/presentation/view_model/operation_creation_type_view_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:budget_tracker/features/operations/presentation/view_model/operation_creation_sum_view_model.dart';

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
      state = OperationCreationTypeViewDataState(
        sum: double.parse(_sum.replaceAll(',', '.')),
        data: await _repository.getCategories(),
        isIncome: false,
        selectedCategory: (state as OperationCreationTypeViewDataState).data[0],
      );
    } catch (e) {
      state = OperationCreationTypeViewErrorState();
    }
  }

  void changeIncomeType(bool value) {
    final modelState = state as OperationCreationTypeViewDataState;
    state = OperationCreationTypeViewDataState(
      data: modelState.data,
      sum: modelState.sum,
      selectedCategory: modelState.selectedCategory,
      isIncome: value,
    );
  }

  bool returnIncomeValue() {
    return (state as OperationCreationTypeViewDataState).isIncome;
  }

  void selectCategory(Category category) {
    final modelState = state as OperationCreationTypeViewDataState;
    state = OperationCreationTypeViewDataState(
      data: modelState.data,
      sum: modelState.sum,
      selectedCategory: category,
      isIncome: modelState.isIncome,
    );
  }

  Category returnSelectedCategory() {
    return (state as OperationCreationTypeViewDataState).selectedCategory;
  }
}
