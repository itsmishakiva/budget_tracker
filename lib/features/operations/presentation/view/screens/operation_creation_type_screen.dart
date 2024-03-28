import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:budget_tracker/core/internal/app_router_provider.dart';
import 'package:budget_tracker/core/internal/logger_provider.dart';
import 'package:budget_tracker/core/ui_kit/app_scaffold.dart';
import 'package:budget_tracker/core/ui_kit/constraints_constants.dart';
import 'package:budget_tracker/core/ui_kit/widgets/app_button.dart';
import 'package:budget_tracker/extensions/build_context_extension.dart';
import 'package:budget_tracker/features/categories/domain/entities/category.dart';
import 'package:budget_tracker/features/home/presentation/view_model/home_view_model.dart';
import 'package:budget_tracker/features/operations/presentation/view_model/operation_creation_sum_view_model.dart';
import 'package:budget_tracker/features/operations/presentation/view_model/operation_creation_type_view_model.dart';
import 'package:budget_tracker/features/operations/presentation/view_model/operation_creation_type_view_state.dart';
import 'package:budget_tracker/features/operations/presentation/view_model/operation_list_view_model.dart';
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
          padding: EdgeInsets.fromLTRB(
            constraints.horizontalScreenPadding,
            0,
            constraints.horizontalScreenPadding,
            constraints.horizontalScreenPadding,
          ),
          child: Stack(
            children: [
              _CustomScrollViewWidget(
                tiles: state.data,
                isIncome: state.newOperation.incoming,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: AppButton(
                  title: context.locale!.next,
                  onTap: () async {
                    bool animFinished = false;
                    Timer(const Duration(seconds: 3), () {
                      animFinished = true;
                      if (!ref
                          .read(appRouterProvider)
                          .currentPath
                          .contains('home')) {
                        ref.read(appRouterProvider).navigateNamed('/home');
                        ref
                            .read(
                              operationCreationTypeViewModelProvider.notifier,
                            )
                            .clearData();
                      }
                    });
                    ref
                        .read(appRouterProvider)
                        .navigateNamed('/operation_creation_result');
                    await ref
                        .read(operationCreationTypeViewModelProvider.notifier)
                        .saveData();
                    await ref.read(homeViewModelProvider.notifier).loadData();
                    await ref
                        .read(operationListViewModelProvider.notifier)
                        .loadData();
                    ref
                        .read(operationCreationSumViewModelProvider.notifier)
                        .clearSum();
                    if (animFinished) {
                      ref.read(appRouterProvider).navigateNamed('/home');
                      ref
                          .read(operationCreationTypeViewModelProvider.notifier)
                          .clearData();
                    }
                  },
                ),
              ),
            ],
          ),
        );
    }
  }
}

class _CustomScrollViewWidget extends ConsumerWidget {
  const _CustomScrollViewWidget({
    required this.tiles,
    required this.isIncome,
  });

  final List<Category> tiles;
  final bool isIncome;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: OperationsAppbar(),
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
            height: 16,
          ),
          itemCount: tiles.length,
          itemBuilder: (BuildContext context, int index) {
            final categoryTile = tiles[index];

            return _OperationChoiceTile(
              isSelected: false,
              categoryTile: categoryTile,
            );
          },
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: 70,
          ),
        ),
      ],
    );
  }
}

class OperationsAppbar extends ConsumerWidget {
  const OperationsAppbar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Icon(
              Icons.arrow_back_ios_new,
              color: context.colors.textPrimary,
            ),
          ),
          onTap: () {
            ref.read(appRouterProvider).maybePop();
          },
        ),
        Text(
          context.locale!.createTransaction,
          style: context.textStyles.header1,
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
      child: Container(
        height: 74,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            constraints.tileBorderRadius,
          ),
          color: context.colors.backgroundPrimary,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              offset: const Offset(0.0, 4.0),
              spreadRadius: 0.1,
              blurRadius: 8.6,
            ),
          ],
        ),
        child: Center(
          child: ListTile(
            // tileColor: Colors.white,
            leading: CircleAvatar(
              radius: 25,
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
    );
  }
}

class RadioIcon extends StatelessWidget {
  const RadioIcon(this.showDot, {super.key});

  final bool showDot;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 18,
      height: 18,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: context.colors.backgroundPrimary,
        border: Border.all(color: context.colors.textPrimary, width: 2),
      ),
      child: (showDot)
          ? Center(
              child: Container(
                width: 9,
                height: 9,
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
          height: 10,
        ),
        Text(
          context.locale!.chooseTransactionType,
          style: context.textStyles.hint,
        ),
        const SizedBox(
          height: 10,
        ),
        _OperationTypeTile(
          incomeType: true,
          isIncome: isIncome,
        ),
        const SizedBox(
          height: 16,
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
        .returnSelectedCategoryId();
    final constraints = ref.watch(constraintsConstantsProvider);
    return GestureDetector(
      onTap: () {
        ref
            .read(operationCreationTypeViewModelProvider.notifier)
            .selectCategory(categoryTile);
      },
      child: Container(
        height: 74,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            constraints.tileBorderRadius,
          ),
          color: context.colors.backgroundPrimary,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              offset: const Offset(0.0, 4.0),
              spreadRadius: 0.1,
              blurRadius: 8.6,
            ),
          ],
        ),
        child: Center(
          child: ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundColor: categoryTile.color,
              child: Text(
                categoryTile.emoji,
                style: const TextStyle(fontSize: 22.0),
              ),
            ),
            title: Text(
              categoryTile.title,
              style: context.textStyles.textButton,
            ),
            trailing: RadioIcon(categoryTile.id == selectedChoiceTile),
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
          height: 10,
        ),
      ],
    );
  }
}
