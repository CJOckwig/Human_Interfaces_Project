import 'package:flutter/material.dart';

import '../data/drink_data.dart';
import '../widgets/drink_item_widget.dart';
import '../pages/cart_page.dart';

class DrinkSelectionPage extends StatelessWidget {
  const DrinkSelectionPage({super.key});

  static const String routeName = '/drink_selection';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.home,
          ),
          onPressed: () => Navigator.pushNamed(
            context,
            DrinkSelectionPage.routeName,
          ),
        ),
        title: const Text('Antelope Coffee'),
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
      body: GridView.builder(
        padding: const EdgeInsets.all(10.0),
        itemCount: DRINK_ITEMS.length,
        itemBuilder: (context, index) => DrinkItem(
          drinkId: DRINK_ITEMS[index].drinkId,
          name: DRINK_ITEMS[index].name,
          description: DRINK_ITEMS[index].description,
          imageUrl: DRINK_ITEMS[index].imageUrl,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 2, // 3.0 / 2.0
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 30.0,
        ),
      ),
    );
  }
}
