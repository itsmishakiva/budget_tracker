import 'package:auto_route/annotations.dart';
import 'package:budget_tracker/core/ui_kit/app_scaffold.dart';
import 'package:budget_tracker/features/operation_list/presentation/view/screens/operation_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';

import 'package:budget_tracker/core/internal/logger_provider.dart';
import 'package:budget_tracker/themes/app_colors.dart';
import 'package:budget_tracker/features/account/domain/entities/account.dart';
import 'package:budget_tracker/features/account/presentation/view/screens/account_screen.dart';
import 'package:budget_tracker/features/account/presentation/view_model/account_list_view_model.dart';
import 'package:budget_tracker/features/account/presentation/view_model/account_list_view_state.dart';

@RoutePage()
class HomeScreen extends ConsumerWidget {
  final ScrollController scrollController =
      ScrollController(); // Создание scrollController

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppScaffold(
      backgroundColor: AppLightColors().backgroundSecondary,
      body: AccountListScreenContent(
        scrollController: scrollController,
      ), // Передача scrollController в AccountListScreenContent
    );
  }
}

class AccountListScreenContent extends ConsumerWidget {
  final ScrollController scrollController;

  // Удалите 'const' перед конструктором
  const AccountListScreenContent({super.key, required this.scrollController});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(accountListViewModelProvider);
    switch (state) {
      case AccountListViewLoadingState _:
        ref.read(loggerProvider).log(Level.INFO, 'Hello!');
        return const Center(
          child: CircularProgressIndicator(),
        );
      case AccountListViewErrorState _:
        return const Center(
          child: Icon(Icons.error),
        );
      case AccountListViewDataState _:
        return CustomScrollView(
          controller: scrollController,
          slivers: [
            SliverPersistentHeader(
              delegate: _AccountListTileHeaderDelegate(
                account: state.dataAccount[0],
              ),
              pinned: true,
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) {
                  return OperationListTile(
                    operation: state.dataOperations[index],
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

class _AccountListTileHeaderDelegate extends SliverPersistentHeaderDelegate {
  final Account account;

  _AccountListTileHeaderDelegate({required this.account});

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    double scale = 1.0 - shrinkOffset / 500;
    scale = scale < 0.7 ? 0.7 : scale;
    return Transform.scale(
      scale: scale,
      alignment: Alignment.topCenter,
      child: AccountListTile(
        account: account,
        scale: 1.0,
      ),
    );
  }

  @override
  double get maxExtent => 240;

  @override
  double get minExtent => 190;

  @override
  bool shouldRebuild(_AccountListTileHeaderDelegate oldDelegate) {
    return false;
  }
}
