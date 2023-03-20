// pages/products_overview_page.dart

import 'package:flutter/material.dart';

import '../data/temp_data.dart';
import '../widgets/product_item.dart';
import '../pages/cart_page.dart';

class ProductsOverviewPage extends StatelessWidget {
  const ProductsOverviewPage({super.key});

  static const String routeName = '/products_overview';

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
            ProductsOverviewPage.routeName,
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
        itemCount: TEMP_PRODUCTS.length,
        itemBuilder: (context, index) => ProductItem(
          id: TEMP_PRODUCTS[index].id,
          title: TEMP_PRODUCTS[index].title,
          imageUrl: TEMP_PRODUCTS[index].imageUrl,
        ),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 1.5, // 3.0 / 2.0
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
        ),
      ),
    );
  }
}
