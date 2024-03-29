import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './data/globals.dart';

import './pages/cart_page.dart';
import './pages/confirmation_page.dart';
import './pages/customer_info_page.dart';
import './pages/drink_customize_page.dart';
import './pages/drink_selection_page.dart';
import './pages/payment_info_page.dart';
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
          fontFamily: 'FreeSans',
          colorScheme: ColorScheme.fromSeed(
            seedColor: Globals.caribouBlue,
            primary: Globals.caribouBlue,
            secondary: Globals.caribouBrown,
            tertiary: Globals.caribouDarkBlue,
          ),
          appBarTheme: const AppBarTheme(
            backgroundColor: Globals.caribouDarkBlue,
            titleTextStyle: TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'FreeSans',
              fontSize: 20.0,
            ),
          ),
          canvasColor: Globals.caribouLightGrey,
        ),
        // home: const ProductsOverviewPage(),
        initialRoute: DrinkSelectionPage.routeName,
        routes: {
          DrinkSelectionPage.routeName: (context) => const DrinkSelectionPage(),
          DrinkCustomizePage.routeName: (context) =>
              const DrinkCustomizePageFull(),
          CartPage.routeName: (context) => const CartPage(),
          CustomerInfoPage.routeName: (context) => const CustomerInfoPage(),
          PaymentInfoPage.routeName: (context) => const PaymentInfoPage(),
          ConfirmationPage.routeName: (context) => const ConfirmationPage(),
        },
      ),
    );
  }
}
