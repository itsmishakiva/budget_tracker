import 'dart:async';

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:budget_tracker/core/internal/app_router_provider.dart';
import 'package:budget_tracker/extensions/build_context_extension.dart';
import 'package:budget_tracker/features/home/presentation/view_model/home_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rive/rive.dart';

@RoutePage()
class OperationCreationResultScreen extends ConsumerWidget {
  const OperationCreationResultScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Timer(const Duration(seconds: 3), () {
      ref.read(homeViewModelProvider.notifier).loadData();
      ref.read(appRouterProvider).navigateNamed('/home');
    });

    return Scaffold(
      backgroundColor: context.colors.accent,
      body: const Center(
        child: SizedBox(
          height: 300,
          width: 300,
          child: RiveAnimation.asset(
            'assets/pig.riv',
          ),
        ),
      ),
    );
  }
}
