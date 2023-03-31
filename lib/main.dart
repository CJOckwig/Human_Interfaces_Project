import 'package:flutter/material.dart';
import 'package:flutter_state/pages/customer_info_page.dart';
import 'package:flutter_state/pages/payment_info_page.dart';
import 'package:provider/provider.dart';

import './data/globals.dart';
import './pages/product_detail_page.dart';
import './pages/products_overview_page.dart';
import './pages/cart_page.dart';
import './pages/payment_info_page.dart';
import './pages/customer_info_page.dart';
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
            seedColor: Globals.caribouBrown,
            primary: Globals.caribouBrown,
            secondary: Globals.caribouBlue,
          ),
          canvasColor: Globals.caribouLightGrey,
        ),
        // home: const ProductsOverviewPage(),
        initialRoute: PaymentInfoPage.routeName,
        routes: {
          ProductsOverviewPage.routeName: (context) =>
              const ProductsOverviewPage(),
          ProductDetailPage.routeName: (context) => const ProductDetailPage(),
          CartPage.routeName: (context) => const CartPage(),
          PaymentInfoPage.routeName: (context) => const PaymentInfoPage(),
          CustomerInfoPage.routeName: (context) => const CustomerInfoPage(),
        },
      ),
    );
  }
}
