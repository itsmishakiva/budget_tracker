import 'dart:math';

import 'package:auto_route/auto_route.dart';
import 'package:budget_tracker/core/internal/logger_provider.dart';
import 'package:budget_tracker/core/ui_kit/app_scaffold.dart';
import 'package:budget_tracker/extensions/build_context_extension.dart';
import 'package:budget_tracker/features/operation_list/domain/entities/operation.dart';
import 'package:budget_tracker/features/operation_list/presentation/view_model/operation_list_view_model.dart';
import 'package:budget_tracker/features/operation_list/presentation/view_model/operation_list_view_state.dart';
import 'package:budget_tracker/themes/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';

import '../../../../../themes/app_colors.dart';

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
  const OperationListScreenContent();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(operationListViewModelProvider);
    switch (state) {
      case OperationListViewLoadingState _:
        ref.read(loggerProvider).log(Level.INFO, "Hello!");
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
  final double size = 30;

  Color _randomColor() {
    final random = Random();
    return Color.fromRGBO(
      random.nextInt(256), // Красный
      random.nextInt(256), // Зеленый
      random.nextInt(256), // Синий
      1.0, // Прозрачность
    );
  }

  Icon _operationIcon(String operation, Color color) {

    switch (operation) {
      case "Home":
        return Icon(Icons.home, size: size, color: color);
      case "Health":
        return Icon(Icons.heart_broken_rounded, size: size, color: color);
      case "Food":
        return Icon(Icons.emoji_food_beverage, size: size, color: color);
      default:
        return Icon(Icons.home, size: size, color: color);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 8),
      child: ListTile(
        tileColor: AppLightColors().backgroundPrimary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        leading: Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppLightColors().customLightColors[operation.id % 6],
          ),
          child: _operationIcon(operation.title, AppLightColors().customColors[operation.id % 6])
        ),
        title: Text(
            operation.title,
          style: AppLightTextStyles(colors: AppLightColors()).header3,
          overflow: TextOverflow.ellipsis,
        ),
        subtitle: Text(
            operation.companyName,
          style: AppLightTextStyles(colors: AppLightColors()).subtitle2,
          overflow: TextOverflow.ellipsis,
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              operation.sum.toStringAsFixed(2),
              style: AppLightTextStyles(colors: AppLightColors()).header3,
            ),
            Text(
              operation.currencySymbol,
              style: AppLightTextStyles(colors: AppLightColors()).header3,
            ),
          ],
        ),
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
