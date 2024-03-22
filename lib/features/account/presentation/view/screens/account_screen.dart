import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../../../themes/app_colors.dart';
import '../../../../../themes/app_text_styles.dart';
import '../../../domain/entities/account.dart';

class AccountListTile extends StatelessWidget {
  const AccountListTile({
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
