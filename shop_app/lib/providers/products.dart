import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

import '../models/product.dart';

// mixin
class Products with ChangeNotifier {
  List<Product> _items =
      []; // using private => not accessible from the outside so using underscore here (to prevent from being edited by providing reference and pointer)

  List<Product> get items {
    return [..._items];
  }

  void addProduct() {
    // _items.add(value);
    notifyListeners();
  }
}
