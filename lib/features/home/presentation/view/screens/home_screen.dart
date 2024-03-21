import 'dart:ui';

import 'package:auto_route/annotations.dart';
import 'package:budget_tracker/core/ui_kit/app_scaffold.dart';
import 'package:budget_tracker/features/operation_list/presentation/view/screens/operation_list_screen.dart';
import 'package:budget_tracker/themes/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logging/logging.dart';

import '../../../../../core/internal/logger_provider.dart';
import '../../../../../themes/app_colors.dart';
import '../../../domain/entities/account.dart';
import '../../view_model/account_list_view_model.dart';
import '../../view_model/account_list_view_state.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      backgroundColor: AppLightColors().backgroundSecondary,
      body: Column(
        children: [
          SizedBox(height: 40,),
          AccountListScreenContent(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text(
                  "Transactions",
                style: AppLightTextStyles(colors: AppLightColors()).header2,
              ),
            ),
          ),
          Expanded(
              child: OperationListScreenContent()
          ),
        ],
      ),
    );
  }

}

class AccountListScreenContent extends ConsumerWidget {
  const AccountListScreenContent();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(accountListViewModelProvider);
    switch (state) {
      case AccountListViewLoadingState _:
        ref.read(loggerProvider).log(Level.INFO, "Hello!");
        return const Center(
          child: CircularProgressIndicator(),
        );
      case AccountListViewErrorState _:
        return const Center(
          child: Icon(Icons.error),
        );
      case AccountListViewDataState _:
        return _AccountListTile(
            account: state.data[0],
        );
    }
  }
}


class _AccountListTile extends StatelessWidget {
  const _AccountListTile({
    required this.account,
  });

  final Account account;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Center(
            child: Container(
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: AppLightColors().accent,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 50.0, sigmaY: 50.0),
                  child: Container(
                    width: 320.0,
                    height: 200.0,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200.withOpacity(0.1),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          child: Text(
                            account.title,
                            style: AppLightTextStyles(colors: AppLightColors()).bodyTextSurface,
                          ),
                        ),
                        Text(
                          account.sum.toString(),
                          style: AppLightTextStyles(colors: AppLightColors()).headerSurface3,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    _iconArrow(Icon(
                                      Icons.arrow_downward,
                                      color: AppLightColors().error,
                                    ),
                                    ),
                                    _info("Expenses", "${account.expenses}${account.currencySymbol}"),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    _iconArrow(Icon(
                                      Icons.arrow_upward,
                                      color: AppLightColors().success,
                                    ),
                                    ),
                                    _info("Income", "${account.income}${account.currencySymbol}"),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _iconArrow(Icon icon) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            spreadRadius: 2,
          ),
        ],
      ),
      child: icon,
    );
  }

  Widget _info(String type, String sum) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            type,
            style: AppLightTextStyles(colors: AppLightColors()).bodyTextSurface1,
          ),
          Text(
            sum,
            style: AppLightTextStyles(colors: AppLightColors()).bodyTextSurface2,
          ),
        ],
      ),
    );
  }
}
