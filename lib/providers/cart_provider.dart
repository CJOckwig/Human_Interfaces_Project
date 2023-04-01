import 'package:flutter/material.dart';

import '../models/cart_item.dart';

class Cart with ChangeNotifier {
  // ignore: prefer_final_fields, non_constant_identifier_names
  final double TAX = 1.045;
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items {
    return {..._items};
  }

  int get length {
    return _items.length;
  }

  double get subtotalAmount {
    var subtotal = 0.0;
    _items.forEach((key, cartItem) {
      subtotal += cartItem.price * cartItem.quantity;
    });
    return subtotal;
  }

  double get totalAmount {
    var total = 0.0;
    total = subtotalAmount * TAX;
    return total;
  }

  double get taxAmount {
    var tax = 0.0;
    tax = totalAmount - subtotalAmount;
    return tax;
  }

  void addItem(String id, String name, double price) {
    if (_items.containsKey(name)) {
      _items.update(
        id,
        (existingCartItem) => CartItem(
          name: existingCartItem.name,
          quantity: existingCartItem.quantity + 1,
          price: existingCartItem.price,
        ),
      );
    } else {
      _items.putIfAbsent(
        id,
        () => CartItem(
          name: name,
          quantity: 1,
          price: price,
        ),
      );
    }
    notifyListeners();
  }

  void removeItem(String id) {
    _items.remove(id);
    notifyListeners();
  }

  void removeSingleItem(String id) {
    if (!_items.containsKey(id)) return;
    if (_items[id]!.quantity > 1) {
      _items.update(
        id,
        (existing) => CartItem(
          name: existing.name,
          quantity: existing.quantity,
          price: existing.price,
        ),
      );
    } else {
      _items.remove(id);
    }
    notifyListeners();
  }
}
