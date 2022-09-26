import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier {
  String? _searchQuery;

   String? get searchQuery => _searchQuery;

  set searchQuery(String? value) {
    if (value != _searchQuery) {
      _searchQuery = value;
      notifyListeners();
    }
  }
}
