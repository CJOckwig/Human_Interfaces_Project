import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/cart_provider.dart';
import '../pages/products_overview_page.dart';
import '../pages/customer_info_page.dart';
import '../widgets/cart_item_widget.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  static const routeName = './cart';

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.home,
          ),
          onPressed: () => Navigator.pushNamed(
            context,
            ProductsOverviewPage.routeName,
          ),
        ),
        title: const Text('Your Cart'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.shopping_cart,
            ),
            onPressed: () => Navigator.pushNamed(
              context,
              CartPage.routeName,
            ),
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(
            height: 10.0,
          ),
          Expanded(
              child: ListView.builder(
            itemCount: cart.items.length,
            itemBuilder: (context, index) => CartItemWidget(
              name: cart.items.values.toList()[index].name,
              price: cart.items.values.toList()[index].price,
              quantity: cart.items.values.toList()[index].quantity,
              id: cart.items.keys.toList()[index],
            ),
          )),
        ],
      ),
      persistentFooterButtons: [
        Column(
          children: [
            // Card holds Discount, Subtotal, Tax, Total
            Card(
              margin: const EdgeInsets.all(15.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text(
                          'Subtotal:',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '\$${cart.subtotalAmount.toStringAsFixed(2)}',
                          style: const TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text(
                          'Sales Tax:',
                          style: TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '\$${cart.taxAmount.toStringAsFixed(2)}',
                          style: const TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      height: 10,
                      thickness: 3,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        const Text(
                          'Total:',
                          style: TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Spacer(),
                        Text(
                          '\$${cart.totalAmount.toStringAsFixed(2)}',
                          style: const TextStyle(
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            // Row holds the 'Continue Shopping' and 'Check Out' buttons
            Row(
              children: [
                // Continue Shopping Button
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      style: TextButton.styleFrom(
                        side: BorderSide(
                          color: Theme.of(context).colorScheme.tertiary,
                          width: 3,
                        ),
                        foregroundColor: Theme.of(context).colorScheme.tertiary,
                        backgroundColor: Colors.white,
                        textStyle: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () => Navigator.pushNamed(
                        context,
                        ProductsOverviewPage.routeName,
                      ),
                      child: const Text('Continue Shopping'),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                // Check Out Button
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: ElevatedButton(
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Theme.of(context).colorScheme.tertiary,
                        textStyle: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      onPressed: () => Navigator.pushNamed(
                        context,
                        CustomerInfoPage.routeName,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('Check Out '),
                          Icon(
                            Icons.arrow_forward,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
