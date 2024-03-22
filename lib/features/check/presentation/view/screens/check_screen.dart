import 'dart:ui';

import 'package:budget_tracker/extensions/build_context_extension.dart';
import 'package:flutter/material.dart';

import 'package:budget_tracker/themes/app_colors.dart';

import 'package:budget_tracker/features/check/domain/entities/check.dart';

class CheckListTile extends StatelessWidget {
  const CheckListTile({
    super.key,
    required this.check,
  });

  final Check check;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: Stack(
        children: [
          Center(
            child: Container(
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: context.colors.accent,
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 50,
            child: Center(
              child: SizedBox(
                width: 320,
                height: 220,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.0),
                  child: ClipRect(
                    child: BackdropFilter(
                      filter: ImageFilter.blur(
                        sigmaX: 10.0,
                        sigmaY: 30.0,
                        tileMode: TileMode.decal,
                      ),
                      child: Container(
                        color: context.colors.accent.withOpacity(0.6),
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 15.0),
                              child: Text(
                                check.title,
                                style: context.textStyles.bodyTextSurface,
                              ),
                            ),
                            Text(
                              check.sum.toString(),
                              style: context.textStyles.headerSurface3,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Row(
                                      children: [
                                        _iconArrow(
                                          context,
                                          Icon(
                                            Icons.arrow_downward,
                                            color: AppLightColors().error,
                                          ),
                                        ),
                                        _info(
                                          context,
                                          'Expenses',
                                          '${check.expenses}₽',
                                        ),
                                      ],
                                    ),
                                  ),
                                  Expanded(
                                    child: Row(
                                      children: [
                                        _iconArrow(
                                          context,
                                          Icon(
                                            Icons.arrow_upward,
                                            color: AppLightColors().success,
                                          ),
                                        ),
                                        _info(
                                          context,
                                          'Income',
                                          '${check.income}₽',
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
            ),
          ),
        ],
      ),
    );
  }

  Widget _iconArrow(BuildContext context, Icon icon) {
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

  Widget _info(BuildContext context, String type, String sum) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            type,
            style: context.textStyles.bodyTextSurface1,
          ),
          Text(
            sum,
            style: context.textStyles.bodyTextSurface2,
          ),
        ],
      ),
    );
  }
}
