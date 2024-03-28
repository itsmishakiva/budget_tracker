import 'package:auto_route/annotations.dart';
import 'package:budget_tracker/core/internal/app_router_provider.dart';
import 'package:budget_tracker/core/ui_kit/app_scaffold.dart';
import 'package:budget_tracker/extensions/build_context_extension.dart';
import 'package:budget_tracker/features/operations/presentation/view/screens/operation_list_screen.dart';
import 'package:budget_tracker/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';
import 'package:budget_tracker/core/internal/logger_provider.dart';
import 'package:budget_tracker/themes/app_colors.dart';
import 'package:budget_tracker/features/home/presentation/view_model/home_view_model.dart';
import 'package:budget_tracker/features/check/domain/entities/check.dart';
import 'package:budget_tracker/features/check/presentation/view/screens/check_screen.dart';
import 'package:budget_tracker/features/home/presentation/view_model/home_view_state.dart';

@RoutePage()
class HomeScreen extends ConsumerWidget {
  final ScrollController scrollController = ScrollController();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppScaffold(
      backgroundColor: AppLightColors().backgroundPrimary,
      body: CheckListScreenContent(
        scrollController: scrollController,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(appRouterProvider).navigateNamed('/operation_creation_sum');
        },
        backgroundColor: context.colors.accent,
        child: Icon(
          Icons.add,
          color: context.colors.textSurface,
        ),
      ),
    );
  }
}

class CheckListScreenContent extends ConsumerWidget {
  final ScrollController scrollController;

  const CheckListScreenContent({
    super.key,
    required this.scrollController,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homeViewModelProvider);
    logger.log(Level.INFO, state.runtimeType);
    switch (state) {
      case HomeViewLoadingState _:
        ref.read(loggerProvider).log(Level.INFO, 'Hello!');
        return const Center(
          child: CircularProgressIndicator(),
        );
      case HomeViewErrorState _:
        return const Center(
          child: Icon(Icons.error),
        );
      case HomeViewDataState _:
        return CustomScrollView(
          physics: const AlwaysScrollableScrollPhysics(
            parent: BouncingScrollPhysics(),
          ),
          controller: scrollController,
          slivers: [
            SliverPersistentHeader(
              delegate: _CheckTileHeaderDelegate(
                //TODO remove
                check: state.dataAccount.isEmpty
                    ? Check(
                        id: 1,
                        expenses: 0,
                        income: 0,
                        sum: 0,
                      )
                    : state.dataAccount.first,
              ),
              pinned: true,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return Column(
                    children: [
                      if (index != 0) const SizedBox(height: 16.0),
                      OperationListTile(
                        operation: state.dataOperations[index],
                        category: state.dataCategory[
                            state.dataOperations[index].categoryId]!,
                      ),
                    ],
                  );
                },
                childCount: state.dataOperations.length,
              ),
            ),
          ],
        );
    }
  }
}

class _CheckTileHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Check check;

  _CheckTileHeaderDelegate({required this.check});

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    double scale = 1.0 - shrinkOffset / 500;
    return Stack(
      children: [
        Positioned(
          left: 0,
          right: 0,
          top: 0,
          bottom: -shrinkOffset,
          child: Transform.scale(
            scale: scale,
            origin: const Offset(0, -150),
            child: CheckListTile(
              check: check,
            ),
          ),
        ),
      ],
    );
  }

  @override
  bool shouldRebuild(_CheckTileHeaderDelegate oldDelegate) {
    return false;
  }

  @override
  double get maxExtent => 286;

  @override
  double get minExtent => 0;
}
