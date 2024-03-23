import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

enum Category { all, expenses, income }

class CategoryState extends ChangeNotifier {
  Category _selectedCategory = Category.all;

  Category get selectedCategory => _selectedCategory;

  void setSelectedCategory(Category category) {
    _selectedCategory = category;
    notifyListeners();
  }
}

final categoryProvider = ChangeNotifierProvider((ref) => CategoryState());
