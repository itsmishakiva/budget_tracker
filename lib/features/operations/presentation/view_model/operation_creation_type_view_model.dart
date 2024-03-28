import 'package:budget_tracker/features/categories/domain/entities/category.dart';
import 'package:budget_tracker/features/categories/domain/repositories/category_repository.dart';
import 'package:budget_tracker/features/categories/internal/caretory_repository_provider.dart';
import 'package:budget_tracker/features/operations/domain/entities/new_operation.dart';
import 'package:budget_tracker/features/operations/domain/repositories/new_operation_repository.dart';
import 'package:budget_tracker/features/operations/internal/new_operation_repository_provider.dart';
import 'package:budget_tracker/features/operations/presentation/view_model/operation_creation_type_view_state.dart';
import 'package:budget_tracker/main.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';

final operationCreationTypeViewModelProvider = StateNotifierProvider<
    OperationCreationTypeViewModel, OperationCreationTypeViewState>(
  (ref) => OperationCreationTypeViewModel(
    OperationCreationTypeViewLoadingState('0'),
    ref.read(categoryRepositoryProvider),
    ref.read(newOperationRepositoryProvider),
  ),
);

class OperationCreationTypeViewModel
    extends StateNotifier<OperationCreationTypeViewState> {
  final CategoryRepository _categoryRepository;
  final NewOperationRepository _newOperationRepository;

  OperationCreationTypeViewModel(
    OperationCreationTypeViewState state,
    this._categoryRepository,
    this._newOperationRepository,
  ) : super(state);

  void setSum(String value) {
    state = OperationCreationTypeViewLoadingState(value);
  }

  Future<void> loadData() async {
    try {
      List<Category> categoriesData = await _categoryRepository.getCategories();

      state = OperationCreationTypeViewDataState(
        state.sum,
        data: categoriesData,
        newOperation: NewOperation(
          sum: double.parse(state.sum.replaceAll(',', '.')),
          date: DateTime.now(),
          incoming: false,
          categoryId: categoriesData[0].id,
        ),
      );
    } catch (e) {
      logger.log(Level.WARNING, e);
      state = OperationCreationTypeViewErrorState(state.sum);
    }
  }

  Future<void> saveData() async {
    if (state is OperationCreationTypeViewDataState) {
      await _newOperationRepository.setOperation(
        (state as OperationCreationTypeViewDataState).newOperation,
      );
    }
  }

  void clearData() async {
    state = OperationCreationTypeViewLoadingState('0');
  }

  void changeIncomeType(bool value) {
    final modelState = state as OperationCreationTypeViewDataState;
    state = OperationCreationTypeViewDataState(
      state.sum,
      data: modelState.data,
      newOperation: NewOperation(
        sum: modelState.newOperation.sum,
        incoming: value,
        categoryId: modelState.newOperation.categoryId,
      ),
    );
  }

  bool returnIncomeValue() {
    return (state as OperationCreationTypeViewDataState).newOperation.incoming;
  }

  void selectCategory(Category category) {
    final modelState = state as OperationCreationTypeViewDataState;
    state = OperationCreationTypeViewDataState(
      state.sum,
      data: modelState.data,
      newOperation: NewOperation(
        sum: modelState.newOperation.sum,
        incoming: modelState.newOperation.incoming,
        categoryId: category.id,
      ),
    );
  }

  int returnSelectedCategoryId() {
    return (state as OperationCreationTypeViewDataState)
        .newOperation
        .categoryId!;
  }

  void setDateTime() {
    final modelState = state as OperationCreationTypeViewDataState;
    state = OperationCreationTypeViewDataState(
      state.sum,
      data: modelState.data,
      newOperation: NewOperation(
        sum: modelState.newOperation.sum,
        date: DateTime.now(),
        incoming: modelState.newOperation.incoming,
        categoryId: modelState.newOperation.categoryId,
      ),
    );
  }
}
