import 'package:auto_route/auto_route.dart';
import 'package:budget_tracker/core/internal/app_router_provider.dart';
import 'package:budget_tracker/core/ui_kit/app_scaffold.dart';
import 'package:budget_tracker/extensions/build_context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class OperationCreationSumScreen extends ConsumerWidget {
  const OperationCreationSumScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppScaffold(
      backgroundColor: context.colors.accent,
      body: Column(
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
          const Expanded(
            child: _SumInputField(),
          ),
        ],
      ),
    );
  }
}

class CurrentBalance extends StatelessWidget {
  const CurrentBalance({super.key});

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
          '1234.3',
          style: context.textStyles.bodyTextSurface
              .copyWith(fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}

class _SumInputField extends StatelessWidget {
  const _SumInputField();

  @override
  Widget build(BuildContext context) {
    String display = '';
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            '₽$display',
            style: context.textStyles.headerSurface1,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: CurrentBalance(),
        ),
        const SizedBox(
          height: 25,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            color: context.colors.backgroundPrimary,
          ),
          //TODO add numpad
        ),
      ],
    );
  }
}
