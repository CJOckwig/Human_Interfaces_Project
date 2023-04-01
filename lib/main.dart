import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './data/globals.dart';
import './pages/product_detail_page.dart';
import './pages/products_overview_page.dart';
import './pages/cart_page.dart';
import './providers/cart_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'My Shop',
        theme: ThemeData(
          fontFamily: 'MinionPro',
          colorScheme: ColorScheme.fromSeed(
            seedColor: Globals.sdsuBlue,
            primary: Globals.sdsuBlue,
            secondary: Globals.sdsuYellow,
          ),
          canvasColor: Globals.sdsuLightBlue,
        ),
        // home: const ProductsOverviewPage(),
        initialRoute: ProductsOverviewPage.routeName,
        routes: {
          ProductsOverviewPage.routeName: (context) =>
              const ProductsOverviewPage(),
          ProductDetailPage.routeName: (context) => ProductDetailPageFull(),
          CartPage.routeName: (context) => const CartPage(),
        },
      ),
    );
  }
}
