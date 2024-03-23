import 'package:flutter_riverpod/flutter_riverpod.dart';

enum Category { all, expenses, income }

final categoryProvider =
    StateNotifierProvider((_) => CategoryProvider(Category.all));

final currentCategory = Provider((ref) => ref.watch(categoryProvider));

class CategoryProvider extends StateNotifier<Category> {
  CategoryProvider(Category state) : super(state);

  void change(Category category) {
    state = category;
  }
}
