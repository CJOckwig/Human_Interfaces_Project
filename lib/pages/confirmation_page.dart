import 'package:flutter/material.dart';

import '../pages/drink_selection_page.dart';

class ConfirmationPage extends StatelessWidget {
  const ConfirmationPage({super.key});

  static const routeName = './confirmation_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.tertiary,
      // AppBar without the standard navigation options
      // The customer may only 'close' the page to return home
      // Distinct appearance to make it clear the transaction is complete
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.close,
            ),
            onPressed: () => Navigator.pushNamed(
              context,
              DrinkSelectionPage.routeName,
            ),
          ),
        ],
      ),
      // Large text with a new background color to signal end of transaction
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              alignment: Alignment.bottomCenter,
              child: const Text('Order Confirmed!',
                  style: TextStyle(fontSize: 40, color: Colors.white)),
            ),
          ),
          Expanded(
            child: Container(
              alignment: Alignment.topCenter,
              child: const Text(
                'Your order is being made and will be ready for pickup shortly',
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
