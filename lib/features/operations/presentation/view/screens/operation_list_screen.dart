import 'package:auto_route/auto_route.dart';
import 'package:budget_tracker/core/ui_kit/app_scaffold.dart';
import 'package:budget_tracker/extensions/build_context_extension.dart';
import 'package:budget_tracker/features/categories/domain/entities/category.dart';
import 'package:budget_tracker/features/operations/domain/entities/operation.dart';
import 'package:budget_tracker/features/operations/presentation/view_model/operation_list_view_model.dart';
import 'package:budget_tracker/features/operations/presentation/view_model/operation_list_view_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_emoji/flutter_emoji.dart';
import 'package:intl/intl.dart';

@RoutePage()
class OperationListScreen extends StatelessWidget {
  const OperationListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AppScaffold(
      body: OperationListScreenContent(),
    );
  }
}

class OperationListScreenContent extends ConsumerWidget {
  const OperationListScreenContent({super.key});

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
          itemExtent: 100,
          itemCount: state.operations.length,
          itemBuilder: (context, index) => OperationListTile(
            operation: state.operations[index],
            category: state.operations[index].category,
          ),
        );
    }
  }
}

class OperationListTile extends StatefulWidget {
  const OperationListTile({
    super.key,
    required this.operation,
    required this.category,
  });

  final Operation operation;
  final Category category;

  @override
  State<OperationListTile> createState() => _OperationListTileState();
}

class _OperationListTileState extends State<OperationListTile> {
  final double size = 30;
  // Color color = Colors.white24;
  String get icon => widget.category.emoji;
  Color get color => widget.category.color;

  @override
  void initState() {
    super.initState();
    // _loadColor();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 8.0,
          horizontal: 16.0,
        ),
        decoration: BoxDecoration(
          color: context.colors.backgroundPrimary,
          borderRadius: BorderRadius.circular(20.0),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              offset: const Offset(0, 1),
              blurRadius: 5,
              spreadRadius: 1.5,
            ),
          ],
        ),
        child: Row(
          children: [
            Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: color,
              ),
              child: Center(
                child: Text(
                  EmojiParser().emojify(icon),
                  style: const TextStyle(fontSize: 24.0),
                ),
              ),
            ),
            const SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.category.title,
                    style: context.textStyles.header3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    DateFormat('dd MM yyyy').format(
                      widget.operation.date,
                    ),
                    style: context.textStyles.subtitle2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            const SizedBox(width: 16.0),
            RichText(
              text: TextSpan(
                text: (widget.operation.incoming ? '+' : '-') +
                    widget.operation.sum.toStringAsFixed(2),
                style: context.textStyles.header3.copyWith(
                    color: widget.operation.incoming
                        ? context.colors.success
                        : context.colors.error,),
                children: [
                  TextSpan(
                    text: ' ₽',
                    style: context.textStyles.header3.copyWith(
                        color: widget.operation.incoming
                            ? context.colors.success
                            : context.colors.error,),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
