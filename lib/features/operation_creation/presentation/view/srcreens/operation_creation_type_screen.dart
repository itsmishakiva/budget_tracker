import "package:auto_route/auto_route.dart";
import "package:budget_tracker/core/internal/logger_provider.dart";
import "package:budget_tracker/core/ui_kit/app_scaffold.dart";
import "package:budget_tracker/core/ui_kit/constraints_constants.dart";
import "package:budget_tracker/core/ui_kit/widgets/my_button.dart";
import "package:budget_tracker/extensions/build_context_extension.dart";
import "package:budget_tracker/features/operation_creation/domain/entities/operation_type.dart";
import "package:budget_tracker/features/operation_creation/presentation/view/view_model/operation_creation_type_view_model.dart";
import "package:budget_tracker/features/operation_creation/presentation/view/view_model/operation_creation_type_view_state.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";
import "package:logging/logging.dart";

@RoutePage()
class OperationCreationTypeScreen extends StatelessWidget {
  const OperationCreationTypeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: _OperationCreationTypeScreenContent(),
    );
  }
}

class _OperationCreationTypeScreenContent extends ConsumerWidget {
  // const _OperationCreationTypeScreenContent({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(operationCreationViewModelProvider);
    final constraints = ref.watch(constraintsConstantsProvider);
    switch (state) {
      case OperationCreationViewLoadingState _:
        ref.read(loggerProvider).log(Level.INFO, "Hello!");
        return const Center(
          child: CircularProgressIndicator(),
        );
      case OperationCreationViewErrorState _:
        return const Center(
          child: Icon(Icons.error),
        );
      case OperationCreationViewDataState _:
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(vertical: constraints.horizontalScreenPadding),
                child: GestureDetector(
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: context.colors.textPrimary,
                  ),
                  onTap: () {},
                ),
              ),
              Text(
                context.locale!.createTransaction,
                style: context.textStyles.header1,
              ),
              _TypeTileGroup(
                subtitle: context.locale!.chooseTransactionType,
              ),
              _ChoiceTileGroup(
                tiles: state.data,
              ),
              MyButton(title: context.locale!.next,),
            ],
          ),
        );
    }
  }
}

class _OperationTypeTile extends ConsumerWidget {
  const _OperationTypeTile(
      {required this.isSelected, required this.isIncome});

  final bool isSelected;
  final bool isIncome;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final constraints = ref.watch(constraintsConstantsProvider);
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 80,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(constraints.tileBorderRadius),
          ),
          elevation: 2,
          color: context.colors.backgroundPrimary,
          child: Center(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor:
                    (isIncome) ? context.colors.success : context.colors.error,
                child: (isIncome) ? Icon(Icons.upload) : Icon(Icons.download),
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
                onChanged: (int? value) {},
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _TypeTileGroup extends StatelessWidget {
  const _TypeTileGroup({required this.subtitle});

  final String subtitle;

  @override
  Widget build(BuildContext context) {
    bool _isSelected = true;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 20,
        ),
        Text(subtitle, style: context.textStyles.hint),
        SizedBox(
          height: 5,
        ),
        _OperationTypeTile(
          isSelected: _isSelected,
          isIncome: true,
        ),
        SizedBox(
          height: 5,
        ),
        _OperationTypeTile(
          isSelected: _isSelected,
          isIncome: false,
        ),
      ],
    );
  }
}

class _OperationChoiceTile extends ConsumerWidget {
  const _OperationChoiceTile(
      {required this.isSelected, required this.categoryTile});

  final OperationType categoryTile;

  final bool isSelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final constraints = ref.watch(constraintsConstantsProvider);
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 80,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(constraints.tileBorderRadius),
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
                onChanged: (int? value) {},
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _ChoiceTileGroup extends StatelessWidget {
  const _ChoiceTileGroup({required this.tiles});

  final List<OperationType> tiles;

  @override
  Widget build(BuildContext context) {
    bool _isSelected = true;

    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Text(context.locale!.chooseTransactionCategory, style: context.textStyles.hint),
          SizedBox(
            height: 5,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: tiles.length,
              itemBuilder: (BuildContext context, int index) {
                return _OperationChoiceTile(
                  isSelected: _isSelected,
                  categoryTile: tiles[index],
                );
              },
            ),
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}

