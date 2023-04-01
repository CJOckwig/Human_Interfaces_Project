//CJOckwig
//Payment information Page

import 'package:flutter/material.dart';

// These two page imports are necessary for every page with an appBar
import '../pages/cart_page.dart';
import '../pages/products_overview_page.dart';

class PaymentInfoPage extends StatelessWidget {
  const PaymentInfoPage({super.key});
  static const String routeName = '/payment_info_page';

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
        title: const Text('Payment Information'),
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
      body: const Center(
        child: Text('Put payment info here pages/customer_info_page.dart'),
      ),
    );
  }
}
