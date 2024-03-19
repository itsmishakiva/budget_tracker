import 'package:budget_tracker/features/operation_list/domain/entities/operation.dart';
import 'package:budget_tracker/features/operation_list/presentation/view_model/operation_list_view_model.dart';
import 'package:budget_tracker/features/operation_list/presentation/view_model/operation_list_view_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class OperationListScreen extends StatelessWidget {
  const OperationListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _OperationListScreenContent(),
    );
  }
}

class _OperationListScreenContent extends ConsumerWidget {
  const _OperationListScreenContent();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(operationListViewModelProvider);
    switch (state) {
      case OperationListViewLoadingState _:
        return const Center(
          child: CircularProgressIndicator(),
        );
      case OperationListViewErrorState _:
        return const Center(
          child: Icon(Icons.error),
        );
      case OperationListViewDataState _:
        return ListView.builder(
          itemCount: state.data.length,
          itemBuilder: (context, index) => _OperationListTile(
            operation: state.data[index],
          ),
        );
    }
  }
}

class _OperationListTile extends StatelessWidget {
  const _OperationListTile({
    required this.operation,
  });

  final Operation operation;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(operation.title),
      subtitle: Text(operation.description),
      trailing: Text(
        operation.sum.toString(),
      ),
    );
  }
}
