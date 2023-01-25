import 'package:flutter/material.dart';

class ShoppingCart with ChangeNotifier {
  List<String> shoppingCart = ['Shoes', 'Bag', 'Shirt'];

  int get length => shoppingCart.length;
  List<String> get items => shoppingCart;

  void addItem(String item) {
    shoppingCart.add(item);
    notifyListeners();
  }
}
