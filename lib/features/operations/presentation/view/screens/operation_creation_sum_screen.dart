import 'package:auto_route/auto_route.dart';
import 'package:budget_tracker/core/internal/app_router_provider.dart';
import 'package:budget_tracker/core/ui_kit/app_scaffold.dart';
import 'package:budget_tracker/core/ui_kit/constraints_constants.dart';
import 'package:budget_tracker/core/ui_kit/widgets/app_button.dart';
import 'package:budget_tracker/extensions/build_context_extension.dart';
import 'package:budget_tracker/features/operations/presentation/view/widgets/numpad.dart';
import 'package:budget_tracker/features/operations/presentation/view_model/operation_creation_sum_view_model.dart';
import 'package:budget_tracker/features/operations/presentation/view_model/operation_creation_sum_view_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class OperationCreationSumScreen extends ConsumerWidget {
  const OperationCreationSumScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppScaffold(
      backgroundColor: context.colors.accent,
      body: const _OperationCreationSumScreenContent(),
    );
  }
}

class _OperationCreationSumScreenContent extends ConsumerWidget {
  const _OperationCreationSumScreenContent();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(operationCreationSumViewModelProvider);
    switch (state) {
      case OperationCreationSumViewLoadingState _:
        return const Center(
          child: CircularProgressIndicator(),
        );
      case OperationCreationSumViewErrorState _:
        return const Center(
          child: Icon(Icons.error),
        );
      case OperationCreationSumViewDataState _:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: GestureDetector(
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: context.colors.backgroundPrimary,
                      ),
                      onTap: () {
                        ref.read(appRouterProvider).maybePop();
                      },
                    ),
                  ),
                  Text(
                    context.locale!.inputAmount,
                    style: context.textStyles.bodyTextSurface
                        .copyWith(fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  // MyButton(),
                ],
              ),
            ),
            Expanded(
              child: _SumInputContainer(
                displaySum: state.sum,
                balance: state.checkData[0].sum,
              ),
            ),
          ],
        );
    }
  }
}

class CurrentBalance extends StatelessWidget {
  const CurrentBalance({super.key, required this.balance});

  final double balance;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '${context.locale!.currentBalance} ',
          style: context.textStyles.bodyTextSurface
              .copyWith(fontWeight: FontWeight.w300),
        ),
        Text(
          balance.toString(),
          style: context.textStyles.bodyTextSurface
              .copyWith(fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}

class _SumInputContainer extends ConsumerWidget {
  const _SumInputContainer({required this.displaySum, required this.balance});

  final String displaySum;
  final double balance;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            '₽$displaySum',
            style: context.textStyles.headerSurface1,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CurrentBalance(
            balance: balance,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        const NumPadContainer(),
      ],
    );
  }
}

class NumPadContainer extends ConsumerWidget {
  const NumPadContainer({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final constraints = ref.watch(constraintsConstantsProvider);
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
          color: context.colors.backgroundPrimary,
        ),
        child: Column(
          children: [
            const Numpad(),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: constraints.horizontalScreenPadding,
              ),
              child: AppButton(title: context.locale!.next),
            ),
          ],
        ),
      ),
    );
  }
}
