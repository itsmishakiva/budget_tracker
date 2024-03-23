import 'package:auto_route/auto_route.dart';
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
    final state = ref.watch(operationCreationViewModelProvider);
    final constraints = ref.watch(constraintsConstantsProvider);
    switch (state) {
      case OperationCreationViewLoadingState _:
        ref.read(loggerProvider).log(Level.INFO, 'Hello!');
        return const Center(
          child: CircularProgressIndicator(),
        );
      case OperationCreationViewErrorState _:
        return const Center(
          child: Icon(Icons.error),
        );
      case OperationCreationViewDataState _:
        return Padding(
          padding: EdgeInsets.all(constraints.horizontalScreenPadding),
          child: Stack(
            children: [
              CustomScrollViewWidget(tiles: state.data),
              Align(
                alignment: Alignment.bottomCenter,
                child: AppButton(
                  title: context.locale!.next,
                ),
              ),
            ],
          ),
        );
    }
  }
}

class CustomScrollViewWidget extends StatelessWidget {
  const CustomScrollViewWidget({super.key, required this.tiles});

  final List<Category> tiles;
  @override
  Widget build(BuildContext context) {
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
            onTap: () {},
          ),
          title: Text(
            context.locale!.createTransaction,
            style: context.textStyles.header1,
          ),
        ),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              const _TypeTileGroup(),
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
            return _OperationChoiceTile(
              isSelected: false,
              categoryTile: tiles[index],
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
  const _OperationTypeTile({required this.isSelected, required this.isIncome});

  final bool isSelected;
  final bool isIncome;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final constraints = ref.watch(constraintsConstantsProvider);
    return GestureDetector(
      onTap: () {},
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
                backgroundColor: (isIncome)
                    ? context.colors.successLight
                    : context.colors.errorLight,
                child: (isIncome)
                    ? Icon(
                        Icons.upload,
                        color: context.colors.success,
                      )
                    : Icon(
                        Icons.download,
                        color: context.colors.error,
                      ),
              ),
              title: (isIncome)
                  ? Text(
                      context.locale!.incomingTransaction,
                      style: context.textStyles.textButton,
                    )
                  : Text(
                      context.locale!.outgoingTransaction,
                      softWrap: false,
                      style: context.textStyles.textButton,
                    ),
              trailing: Radio(
                activeColor: context.colors.textPrimary,
                value: 0,
                groupValue: 0,
                onChanged: (value) {},
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _TypeTileGroup extends StatelessWidget {
  const _TypeTileGroup();

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
        const _OperationTypeTile(
          isSelected: true,
          isIncome: true,
        ),
        const SizedBox(
          height: 5,
        ),
        const _OperationTypeTile(
          isSelected: false,
          isIncome: false,
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
    final constraints = ref.watch(constraintsConstantsProvider);
    return GestureDetector(
      onTap: () {},
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
              trailing: Radio(
                activeColor: context.colors.textPrimary,
                value: 0,
                groupValue: 0,
                onChanged: (value) {},
              ),
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
