import "package:auto_route/auto_route.dart";
import "package:budget_tracker/core/ui_kit/app_scaffold.dart";
import "package:budget_tracker/core/ui_kit/constraints_contants.dart";
import "package:budget_tracker/extensions/build_context_extension.dart";
import "package:budget_tracker/themes/app_colors.dart";
import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter_riverpod/flutter_riverpod.dart";

@RoutePage()
class OperataionCreationIScreen extends StatefulWidget {
  const OperataionCreationIScreen({super.key});

  @override
  State<OperataionCreationIScreen> createState() =>
      _OperataionCreationIScreenState();
}

class _OperataionCreationIScreenState extends State<OperataionCreationIScreen> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TileGroup(subtitle: "Выберите тип транзакции",),
            TileGroup(subtitle: "Выберите категорию транзакции",),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: context.colors.accent,
        // child: Text("Далее", style: context.textStyles.headerSurface2, softWrap: false,),
        label: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text("Далее", style: context.textStyles.textButton.copyWith(color: Colors.white),)),
      ),
    );
  }
}

class OperationTypeTile extends ConsumerWidget {
  const OperationTypeTile(
      {super.key, required this.isSelected, required this.isIncome});

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
            borderRadius: BorderRadius.circular(20.0),
          ),
          elevation: 2,
          color: context.colors.backgroundPrimary,
          child: Center(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: (isIncome)
                    ? context.colors.success
                    : context.colors.error,
                child: (isIncome) ? Icon(Icons.upload) : Icon(Icons.download),
              ),
              title: (isIncome)
                  ? Text(
                'Входящая операция',
                style: context.textStyles.textButton,
              )
                  : Text(
                'Исходящая операция',
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

class TileGroup extends StatelessWidget {
  const TileGroup({super.key, required this.subtitle});

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
        OperationTypeTile(
          isSelected: _isSelected,
          isIncome: true,
        ),
        SizedBox(
          height: 5,
        ),
        OperationTypeTile(
          isSelected: _isSelected,
          isIncome: false,
        ),
      ],
    );
  }
}

class OperationChoiseTile extends ConsumerWidget {
  const OperationChoiseTile(
      {super.key, required this.isSelected, required this.icon, required this.title});

  final bool isSelected;
  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final constraints = ref.watch(constraintsConstantsProvider);
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 80,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          elevation: 2,
          color: context.colors.backgroundPrimary,
          child: Center(
            child: ListTile(
              leading: CircleAvatar(
                backgroundColor: context.colors.accentSecondary,
              ),
              title:Text(
                title,
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
