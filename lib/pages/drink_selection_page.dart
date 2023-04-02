import 'package:flutter/material.dart';

import '../data/drink_data.dart';
import '../widgets/drink_item_widget.dart';
import '../pages/cart_page.dart';

class DrinkSelectionPage extends StatelessWidget {
  const DrinkSelectionPage({super.key});

  static const String routeName = './drink_selection';

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
        body: Column(
          children: <Widget>[
            Card(
                margin: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                  vertical: 10.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: const [
                    SizedBox(
                      height: 10.0,
                    ),
                    Center(
                      child: Text(
                        'Today\'s Deal',
                        style: TextStyle(
                            fontSize: 24.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Center(
                      child: Text(
                        '\$1 off any purchase of \$10 or more',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                  ],
                )),
            Expanded(
              child: GridView.builder(
                padding: const EdgeInsets.all(16.0),
                itemCount: DRINK_ITEMS.length,
                itemBuilder: (context, index) => DrinkItem(
                  drinkId: DRINK_ITEMS[index].drinkId,
                  name: DRINK_ITEMS[index].name,
                  description: DRINK_ITEMS[index].description,
                  imagePath: DRINK_ITEMS[index].imagePath,
                  smallPrice: DRINK_ITEMS[index].smallPrice,
                  mediumPrice: DRINK_ITEMS[index].mediumPrice,
                  largePrice: DRINK_ITEMS[index].largePrice,
                ),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 3.5, // 3.0 / 2.0
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 10.0,
                ),
              ),
            )
          ],
        ));
  }
}
