import 'package:auto_route/auto_route.dart';
import 'package:budget_tracker/core/ui_kit/app_scaffold.dart';
import 'package:budget_tracker/extensions/build_context_extension.dart';
import 'package:budget_tracker/features/operations/domain/entities/operation.dart';
import 'package:budget_tracker/features/operations/presentation/view_model/operation_list_view_model.dart';
import 'package:budget_tracker/features/operations/presentation/view_model/operation_list_view_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_emoji/flutter_emoji.dart';
import 'package:budget_tracker/themes/app_operation_colors.dart';

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
          itemCount: state.data.length,
          itemBuilder: (context, index) => OperationListTile(
            operation: state.data[index],
          ),
        );
    }
  }
}

class OperationListTile extends StatefulWidget {
  const OperationListTile({
    super.key,
    required this.operation,
  });

  final Operation operation;

  @override
  State<OperationListTile> createState() => _OperationListTileState();
}

class _OperationListTileState extends State<OperationListTile> {

  final double size = 30;
  Color color = Colors.white24;

  @override
  void initState() {
    super.initState();
    _loadColor();
  }

  void _loadColor() async {
    Color? loadedColor =
        await ColorStorageManager().loadColor(widget.operation.category.title);
    setState(() {
      color = loadedColor;
    });
  }

  Text _operationIcon(String operation) {
    switch (operation) {
      case 'Home':
        return Text(
          EmojiParser().emojify(':house:'),
          style: const TextStyle(fontSize: 24.0),
        );
      case 'Health':
        return Text(
          EmojiParser().emojify(':broken_heart:'),
          style: const TextStyle(fontSize: 24.0),
        );
      case 'Food':
        return Text(
          EmojiParser().emojify(':fork_and_knife:'),
          style: const TextStyle(fontSize: 24.0),
        );
      case 'Gifts':
        return Text(
          EmojiParser().emojify(':gift:'),
          style: const TextStyle(fontSize: 24.0),
        );
      case 'Travels':
        return Text(
          EmojiParser().emojify(':airplane_departure:'),
          style: const TextStyle(fontSize: 24.0),
        );
      default:
        return Text(
          EmojiParser().emojify(':broken_heart:'),
          style: const TextStyle(fontSize: 24.0),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
      child: ListTile(
        tileColor: context.colors.backgroundPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        leading: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            // color: AppLightColors().customLightColors[operation.id % 6],
            color: color,
          ),
          // child: _operationIcon(operation.title, AppLightColors().customColors[operation.id % 6])
          child: Center(
            child: _operationIcon(widget.operation.category.title),
          ),
        ),
        title: Text(
          widget.operation.category.title,
          style: context.textStyles.header3,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.operation.sum.toStringAsFixed(2),
              style: context.textStyles.header3,
            ),
            Text(
              '₽',
              style: context.textStyles.header3,
            ),
          ],
        ),
      ),
    );
  }
}
