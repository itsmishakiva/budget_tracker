import 'package:auto_route/auto_route.dart';
import 'package:budget_tracker/core/internal/app_router_provider.dart';
import 'package:budget_tracker/core/internal/logger_provider.dart';
import 'package:budget_tracker/core/ui_kit/app_scaffold.dart';
import 'package:budget_tracker/core/ui_kit/constraints_constants.dart';
import 'package:budget_tracker/core/ui_kit/widgets/app_button.dart';
import 'package:budget_tracker/extensions/build_context_extension.dart';
import 'package:budget_tracker/features/categories/domain/entities/category.dart';
import 'package:budget_tracker/features/operations/presentation/view_model/operation_creation_type_view_model.dart';
import 'package:budget_tracker/features/operations/presentation/view_model/operation_creation_type_view_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';

@RoutePage()
class OperationCreationTypeScreen extends StatelessWidget {
  const OperationCreationTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      backgroundColor: context.colors.backgroundSecondary,
      body: _OperationCreationTypeScreenContent(),
    );
  }
}

class _OperationCreationTypeScreenContent extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(operationCreationTypeViewModelProvider);
    final constraints = ref.watch(constraintsConstantsProvider);
    switch (state) {
      case OperationCreationTypeViewLoadingState _:
        ref.read(loggerProvider).log(Level.INFO, 'Hello!');
        return const Center(
          child: CircularProgressIndicator(),
        );
      case OperationCreationTypeViewErrorState _:
        return const Center(
          child: Icon(Icons.error),
        );
      case OperationCreationTypeViewDataState _:
        return Padding(
          padding: EdgeInsets.all(constraints.horizontalScreenPadding),
          child: Stack(
            children: [
              CustomScrollViewWidget(
                tiles: state.data,
                isIncome: state.newOperation.incoming,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: AppButton(
                  title: context.locale!.next,
                  onTap: () {
                    // TODO отправка
                  },
                ),
              ),
            ],
          ),
        );
    }
  }
}

class CustomScrollViewWidget extends ConsumerWidget {
  const CustomScrollViewWidget({
    super.key,
    required this.tiles,
    required this.isIncome,
  });

  final Map<int, Category> tiles;
  final bool isIncome;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          leading: GestureDetector(
            child: Icon(
              Icons.arrow_back_ios_new,
              color: context.colors.textPrimary,
            ),
            onTap: () {
              ref
                  .read(appRouterProvider)
                  .navigateNamed('/operation_creation_sum');
            },
          ),
          title: Text(
            context.locale!.createTransaction,
            style: context.textStyles.header1,
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              _TypeTileGroup(isIncome: isIncome),
              const _ChoiceTileGroup(),
            ],
          ),
        ),
        SliverList.separated(
          separatorBuilder: (BuildContext context, int index) => const SizedBox(
            height: 5,
          ),
          itemCount: tiles.length,
          itemBuilder: (BuildContext context, int index) {
            final tile = tiles.entries.elementAt(index);
            final categoryTile = tile.value;

            return _OperationChoiceTile(
              isSelected: false,
              categoryTile: categoryTile,
            );
          },
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 55,
          ),
        ),
      ],
    );
  }
}

class _OperationTypeTile extends ConsumerWidget {
  const _OperationTypeTile({required this.incomeType, required this.isIncome});

  final bool incomeType;
  final bool isIncome;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final constraints = ref.watch(constraintsConstantsProvider);
    final isIncome = ref
        .watch(operationCreationTypeViewModelProvider.notifier)
        .returnIncomeValue();
    return GestureDetector(
      onTap: () {
        ref
            .read(operationCreationTypeViewModelProvider.notifier)
            .changeIncomeType(incomeType);
      },
      child: SizedBox(
        height: 80,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              constraints.tileBorderRadius,
            ),
          ),
          elevation: 2,
          color: context.colors.backgroundPrimary,
          child: Center(
            child: ListTile(
              // tileColor: Colors.white,
              leading: CircleAvatar(
                backgroundColor: (incomeType)
                    ? context.colors.successLight
                    : context.colors.errorLight,
                child: (incomeType)
                    ? Icon(
                        Icons.arrow_downward_rounded,
                        color: context.colors.success,
                      )
                    : Icon(
                        Icons.arrow_upward_rounded,
                        color: context.colors.error,
                      ),
              ),
              title: (incomeType)
                  ? Text(
                      context.locale!.incomingTransaction,
                      style: context.textStyles.textButton,
                    )
                  : Text(
                      context.locale!.outgoingTransaction,
                      softWrap: false,
                      style: context.textStyles.textButton,
                    ),
              trailing: (incomeType == isIncome)
                  ? const RadioIcon(true)
                  : const RadioIcon(false),
            ),
          ),
        ),
      ),
    );
  }
}

class RadioIcon extends StatelessWidget {
  const RadioIcon(this.showDot, {super.key});

  final bool showDot;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: context.colors.backgroundPrimary,
        border: Border.all(color: context.colors.textPrimary, width: 3),
      ),
      child: (showDot)
          ? Center(
              child: Container(
                width: 8,
                height: 8,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: context.colors.textPrimary,
                ),
              ),
            )
          : Container(),
    );
  }
}

class _TypeTileGroup extends StatelessWidget {
  const _TypeTileGroup({required this.isIncome});

  final bool isIncome;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          context.locale!.chooseTransactionType,
          style: context.textStyles.hint,
        ),
        const SizedBox(
          height: 5,
        ),
        _OperationTypeTile(
          incomeType: true,
          isIncome: isIncome,
        ),
        const SizedBox(
          height: 5,
        ),
        _OperationTypeTile(
          incomeType: false,
          isIncome: isIncome,
        ),
      ],
    );
  }
}

class _OperationChoiceTile extends ConsumerWidget {
  const _OperationChoiceTile({
    required this.isSelected,
    required this.categoryTile,
  });

  final Category categoryTile;

  final bool isSelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedChoiceTile = ref
        .watch(operationCreationTypeViewModelProvider.notifier)
        .returnSelectedCategory();
    final constraints = ref.watch(constraintsConstantsProvider);
    return GestureDetector(
      onTap: () {
        ref
            .read(operationCreationTypeViewModelProvider.notifier)
            .selectCategory(categoryTile);
      },
      child: SizedBox(
        height: 80,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              constraints.tileBorderRadius,
            ),
          ),
          elevation: 2,
          color: context.colors.backgroundPrimary,
          child: Center(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: context.colors.accentSecondary,
              ),
              title: Text(
                categoryTile.title,
                style: context.textStyles.textButton,
              ),
              trailing: RadioIcon(categoryTile == selectedChoiceTile),
            ),
          ),
        ),
      ),
    );
  }
}

class _ChoiceTileGroup extends StatelessWidget {
  const _ChoiceTileGroup();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          context.locale!.chooseTransactionCategory,
          style: context.textStyles.hint,
        ),
        const SizedBox(
          height: 5,
        ),
      ],
    );
  }
}
