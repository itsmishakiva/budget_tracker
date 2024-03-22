import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:budget_tracker/themes/app_colors.dart';
import 'package:budget_tracker/themes/app_text_styles.dart';
import 'package:budget_tracker/features/account/domain/entities/account.dart';

class AccountListTile extends StatelessWidget {
  const AccountListTile({
    super.key,
    required this.account,
    required this.scale,
  });

  final Account account;
  final double scale;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0, bottom: 20),
              child: Container(
                width: 300,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: AppLightColors().accent,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 30.0, left: 30.0, top: 25),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20.0),
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 70.0, sigmaY: 50.0),
                  child: Transform.scale(
                    scale: scale,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 15.0),
                          child: Text(
                            account.title,
                            style: AppLightTextStyles(colors: AppLightColors())
                                .bodyTextSurface,
                          ),
                        ),
                        Text(
                          account.sum.toString(),
                          style: AppLightTextStyles(colors: AppLightColors())
                              .headerSurface3,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Row(
                                  children: [
                                    _iconArrow(
                                      Icon(
                                        Icons.arrow_downward,
                                        color: AppLightColors().error,
                                      ),
                                    ),
                                    _info(
                                      'Expenses',
                                      '${account.expenses}${account.currencySymbol}',
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    _iconArrow(
                                      Icon(
                                        Icons.arrow_upward,
                                        color: AppLightColors().success,
                                      ),
                                    ),
                                    _info(
                                      'Income',
                                      '${account.income}${account.currencySymbol}',
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
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
            style:
                AppLightTextStyles(colors: AppLightColors()).bodyTextSurface1,
          ),
          Text(
            sum,
            style:
                AppLightTextStyles(colors: AppLightColors()).bodyTextSurface2,
          ),
        ],
      ),
    );
  }
}
