//CJOckwig
//Payment information Page

import 'package:flutter/material.dart';
import 'package:flutter_state/pages/customer_info_page.dart';
import 'package:provider/provider.dart';

// These two page imports are necessary for every page with an appBar
import '../pages/cart_page.dart';
import '../pages/drink_selection_page.dart';
import '../pages/confirmation_page.dart';
import '../providers/cart_provider.dart';

class PaymentInfoPage extends StatelessWidget {
  const PaymentInfoPage({super.key});
  static const String routeName = './payment_info_page';

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
            CartPage.routeName,
          ),
        ),
        title: const Text('Payment Information'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.home,
            ),
            onPressed: () => Navigator.pushNamed(
              context,
              DrinkSelectionPage.routeName,
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Card(
            margin: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Credit Information'),
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.number,
                    )),
                Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      decoration:
                          const InputDecoration(labelText: 'Security Code'),
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.number,
                    )),
                Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      decoration:
                          const InputDecoration(labelText: 'Address Line 1'),
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.streetAddress,
                    )),
                Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      decoration:
                          const InputDecoration(labelText: 'Address Line 2'),
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.number,
                    )),
                Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: 'State'),
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.name,
                    )),
                Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: 'City'),
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.name,
                    )),
                Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      decoration:
                          const InputDecoration(labelText: 'Expiration Month'),
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.number,
                    )),
                Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      decoration:
                          const InputDecoration(labelText: 'Expiration Year'),
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.number,
                    )),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () => Navigator.pushNamed(
                        context,
                        CustomerInfoPage.routeName,
                      ),
                    ),
                    const Spacer(),
                    TextButton(
                        onPressed: () {
                          // Empty the current cart on a successful purchase
                          Provider.of<Cart>(
                            context,
                            listen: false,
                          ).clear();
                          Navigator.pushNamed(
                            context,
                            ConfirmationPage.routeName,
                            arguments: TimeOfDay.now(),
                          );
                        },
                        child: const Text('Purchase')),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
