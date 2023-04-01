import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/cart_provider.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({
    super.key,
    required this.name,
    required this.quantity,
    required this.price,
    required this.id,
  });

  final String name;
  final int quantity;
  final double price;
  final String id;

  @override
  Widget build(BuildContext context) {
    // remove item from cart
    return Dismissible(
      key: ValueKey(id),
      direction: DismissDirection.endToStart,
      onDismissed: (direction) => Provider.of<Cart>(
        context,
        listen: false,
      ).removeItem(id),
      background: Container(
        color: Theme.of(context).colorScheme.error,
        alignment: Alignment.centerRight,
        padding: const EdgeInsets.only(
          right: 20.0,
        ),
        margin: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 4.0,
        ),
        child: const Icon(
          Icons.delete,
          color: Colors.white,
        ),
      ),
      child: Card(
        margin: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 4.0,
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            title: Text(
              name,
              style: const TextStyle(fontSize: 20),
            ),
            subtitle: Text('x $quantity'),
            trailing: Text(
              '\$${(price * quantity).toStringAsFixed(2)}',
              style: const TextStyle(fontSize: 16.0),
            ),
          ),
        ),
      ),
    );
  }
}
