import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/cart_provider.dart';

class CartItemWidget extends StatelessWidget {
  const CartItemWidget({
    super.key,
    required this.cartId,
    required this.name,
    required this.quantity,
    required this.price,
    required this.addons,
  });

  final String cartId;
  final String name;
  final int quantity;
  final double price;
  final String addons;

  @override
  Widget build(BuildContext context) {
    // remove item from cart
    return Dismissible(
      key: ValueKey(cartId),
      direction: DismissDirection.endToStart,
      onDismissed: (direction) => Provider.of<Cart>(
        context,
        listen: false,
      ).removeItem(cartId),
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
          padding: const EdgeInsets.all(2.0),
          child: ListTile(
            isThreeLine: true,
            title: Text(
              name,
              style: const TextStyle(fontSize: 20),
            ),
            subtitle: Text(addons),
            trailing: Column(
              children: [
                Text(
                  '\$${(price * quantity).toStringAsFixed(2)}',
                  style: const TextStyle(fontSize: 16.0),
                ),
                Text('x $quantity'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
