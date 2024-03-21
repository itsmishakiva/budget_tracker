import 'package:auto_route/auto_route.dart';
import 'package:budget_tracker/core/ui_kit/app_scaffold.dart';
import 'package:budget_tracker/extensions/build_context_extension.dart';
import 'package:budget_tracker/features/operation_list/domain/entities/operation.dart';
import 'package:budget_tracker/features/operation_list/presentation/view_model/operation_list_view_model.dart';
import 'package:budget_tracker/features/operation_list/presentation/view_model/operation_list_view_state.dart';
import 'package:budget_tracker/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';

@RoutePage()
class OperationListScreen extends StatelessWidget {
  const OperationListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
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
        logger.log(Level.INFO, "Hello!");
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
      leading: SizedBox(
        width: 30,
        height: 30,
        child: _OperationListTileImage(
          url: operation.companyAssetUrl,
        ),
      ),
      title: Text(operation.title),
      subtitle: Text(operation.description),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            operation.sum.toStringAsFixed(2),
          ),
          Text(
            operation.currencySymbol,
            style: TextStyle(
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}

class _OperationListTileImage extends StatelessWidget {
  const _OperationListTileImage({
    this.url,
  });

  final String? url;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6.0),
      child: url == null
          ? ColoredBox(color: context.colors.backgroundSecondary)
          : Image.network(
              url!,
              frameBuilder: (context, child, frame, syncLoaded) {
                if (frame == null)
                  return ColoredBox(color: context.colors.backgroundSecondary);
                return child;
              },
              errorBuilder: (context, child, event) {
                return ColoredBox(color: context.colors.backgroundSecondary);
              },
              fit: BoxFit.cover,
            ),
    );
  }
}
