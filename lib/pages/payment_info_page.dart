//CJOckwig
//Payment information Page

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// These two page imports are necessary for every page with an appBar
import '../pages/cart_page.dart';
import '../pages/drink_selection_page.dart';
import '../providers/cart_provider.dart';

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
            DrinkSelectionPage.routeName,
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
                      keyboardType: TextInputType.number,
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
                      keyboardType: TextInputType.number,
                    )),
                Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: 'City'),
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.number,
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
                        PaymentInfoPage.routeName,
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
                          // change navigator to successful purchase screen later
                          Navigator.pushNamed(
                            context,
                            DrinkSelectionPage.routeName,
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

      //Padding(  padding: EdgeInsets.only(top: 10.0, left: 15.0),)

      /*
        Container(
          width: 100.0,
          height: 100,
          margin: const EdgeInsets.only(top: 8.0, right: 1.0),
          decoration: BoxDecoration(
              border: Border.all(
            width: 1.0,
            color: Globals.caribouBrown,
          )),
        ),*/
    );
  }
}
