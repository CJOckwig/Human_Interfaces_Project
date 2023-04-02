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

  void addItem(String cartId, String name, double price, String addons) {
    if (_items.containsKey(cartId)) {
      _items.update(
        cartId,
        (existingCartItem) => CartItem(
          cartId: existingCartItem.cartId,
          name: existingCartItem.name,
          quantity: existingCartItem.quantity + 1,
          price: existingCartItem.price,
          addons: existingCartItem.addons,
        ),
      );
    } else {
      _items.putIfAbsent(
        cartId,
        () => CartItem(
          cartId: cartId,
          name: name,
          quantity: 1,
          price: price,
          addons: addons,
        ),
      );
    }
    notifyListeners();
  }

  void removeItem(String id) {
    _items.remove(id);
    notifyListeners();
  }

  void clear() {
    _items = {};
    notifyListeners();
  }

  void removeSingleItem(String id) {
    if (!_items.containsKey(id)) return;
    if (_items[id]!.quantity > 1) {
      _items.update(
        id,
        (existing) => CartItem(
          cartId: existing.cartId,
          name: existing.name,
          quantity: existing.quantity,
          price: existing.price,
          addons: existing.addons,
        ),
      );
    } else {
      _items.remove(id);
    }
    notifyListeners();
  }
}
