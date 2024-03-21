import 'package:auto_route/auto_route.dart';
import 'package:budget_tracker/core/ui_kit/app_scaffold.dart';
import 'package:budget_tracker/extensions/build_context_extension.dart';
import 'package:flutter/material.dart';

@RoutePage()
class OperationCreationSumScreen extends StatefulWidget {
  const OperationCreationSumScreen({super.key});

  @override
  State<OperationCreationSumScreen> createState() =>
      _OperationCreationSumScreenState();
}

class _OperationCreationSumScreenState
    extends State<OperationCreationSumScreen> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Container(
        width: double.infinity,
        color: context.colors.accent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
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
                        onTap: () {},
                      ),
                    ),
                    Text(
                      context.locale!.inputAmount,
                      style: context.textStyles.bodyTextSurface
                          .copyWith(fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    // MyButton(),
                  ],
                ),
              ),
            ),
            SumInputField(),
          ],
        ),
      ),
    );
  }
}

class SumInputField extends StatefulWidget {
  const SumInputField({super.key});

  @override
  State<SumInputField> createState() => _SumInputFieldState();
}

class _SumInputFieldState extends State<SumInputField> {
  String display = '';

  void onButtonPressed(String value) {
    setState(() {
      display += value;
    });
  }

  String inputSum = "0";
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "\₽${display}",
            style: context.textStyles.headerSurface1,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: CurrentBalance(),
        ),
        SizedBox(
          height: 25,
        ),
        Expanded(
          child: Container(
            // height: 487,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              color: context.colors.backgroundPrimary,
            ),
            // child: GridView.count(
            //   crossAxisCount: 3,
            //   children: List.generate(9, (index) {
            //     return TextButton(
            //       onPressed: () => onButtonPressed((index + 1).toString()),
            //       child: Text((index + 1).toString()),
            //     );
            //   })
            // ),
          ),
        ),
      ],
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
          "${context.locale!.currentBalance} ",
          style: context.textStyles.bodyTextSurface
              .copyWith(fontWeight: FontWeight.w300),
        ),
        Text(
          "1234.3",
          style: context.textStyles.bodyTextSurface
              .copyWith(fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
