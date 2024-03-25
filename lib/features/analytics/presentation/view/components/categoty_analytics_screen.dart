import 'package:budget_tracker/extensions/build_context_extension.dart';
import 'package:budget_tracker/features/analytics/domain/entities/category_anajytics/category_analytics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_emoji/flutter_emoji.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CategoryAnalyticsScreen extends ConsumerWidget {
  const CategoryAnalyticsScreen({super.key, required this.categoryAnalytics});

  final CategoryAnalytics categoryAnalytics;


  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 150,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: context.colors.backgroundSecondary,
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              EmojiParser()
                  .emojify(categoryAnalytics.category.icon),
              style: const TextStyle(
                fontSize: 25,
              ),
            ),
          ),
          Text(
            categoryAnalytics.category.title,
            style: context.textStyles.header3,
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Text(
              '${(categoryAnalytics.sum).abs()}₽',
              style: categoryAnalytics.sum > 0 ? context.textStyles.income : context.textStyles.expenses,
            ),
          ),
        ],
      ),
    );
  }
}
