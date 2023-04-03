import 'package:flutter/material.dart';

import '../models/cart_model.dart';

class Cart with ChangeNotifier {
  // ignore: prefer_final_fields, non_constant_identifier_names
  final double TAX = 0.045;
  Map<String, CartItem> _items = {};

  Map<String, CartItem> get items {
    return {..._items};
  }

  int get length {
    return _items.length;
  }

  // Calculates subtotal from the sum of the CartItems
  double get subtotalAmount {
    var subtotal = 0.0;
    _items.forEach((key, cartItem) {
      subtotal += cartItem.price * cartItem.quantity;
    });
    subtotal;
    return subtotal;
  }

  // Calculates total after applying discounts and sales tax
  double get totalAmount {
    var total = 0.0;
    total = subtotalAmount - discountAmount + taxAmount;
    return total;
  }

  // Calculates tax on subtotal after applying discounts
  double get taxAmount {
    var tax = 0.0;
    tax = (subtotalAmount - discountAmount) * TAX;
    return tax;
  }

  // Boolean indicates whether the discount requirements have been met
  bool get discountBool {
    var discountBool = false;
    var requirement = 0.0;
    _items.forEach((key, cartItem) {
      requirement += cartItem.price * cartItem.quantity;
    });
    if (requirement > 10.0) {
      discountBool = true;
    }
    return discountBool;
  }

  // Calculates the amount of the discount
  double get discountAmount {
    double discountAmount;
    discountBool ? discountAmount = 1.0 : discountAmount = 0.0;
    return discountAmount;
  }

  // Adds an item to the cart - updates the quantity if the item already exists
  void addItem(
      String cartId, String name, double price, int quantity, String addons) {
    if (_items.containsKey(cartId)) {
      _items.update(
        cartId,
        (existingCartItem) => CartItem(
          cartId: existingCartItem.cartId,
          name: existingCartItem.name,
          quantity: existingCartItem.quantity + quantity,
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
          quantity: quantity,
          price: price,
          addons: addons,
        ),
      );
    }
    notifyListeners();
  }

  // Removes an item, used when dismissing a CartItem via Gesture
  void removeItem(String id) {
    _items.remove(id);
    notifyListeners();
  }

  // Removes all items, used for finishing the transaction
  void clear() {
    _items = {};
    notifyListeners();
  }

  // Function built for potential future use cases not realized in this release
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
