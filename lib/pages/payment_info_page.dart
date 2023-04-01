//CJOckwig
//Payment information Page

import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';
import '../pages/cart_page.dart';
import '../pages/customer_info_page.dart';
import '../data/globals.dart';
import '../providers/cart_provider.dart';
import '../pages/products_overview_page.dart';

// These two page imports are necessary for every page with an appBar
import '../pages/cart_page.dart';
import '../pages/products_overview_page.dart';

class PaymentInfoPage extends StatelessWidget {
  const PaymentInfoPage({super.key});
  static const String routeName = '/payment_info_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
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
        body: Card(
          margin: const EdgeInsets.all(15.0),
          child: Column(
              //Padding(  padding: EdgeInsets.only(top: 10.0, left: 15.0),)
              children: <Widget>[
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

                Padding(
                    padding: EdgeInsets.all(15.0),
                    child: TextFormField(
                      decoration: const InputDecoration(
                          labelText: 'Credit Information'),
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.number,
                    )),
                Padding(
                    padding: EdgeInsets.all(15.0),
                    child: TextFormField(
                      decoration:
                          const InputDecoration(labelText: 'Security Code'),
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.number,
                    )),
                Padding(
                    padding: EdgeInsets.all(15.0),
                    child: TextFormField(
                      decoration:
                          const InputDecoration(labelText: 'Address Line 1'),
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.streetAddress,
                    )),
                Padding(
                    padding: EdgeInsets.all(15.0),
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: 'State'),
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.number,
                    )),
                Padding(
                    padding: EdgeInsets.all(15.0),
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: 'City'),
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.name,
                    )),
                Padding(
                    padding: EdgeInsets.all(15.0),
                    child: TextFormField(
                      decoration:
                          const InputDecoration(labelText: 'Expiration Month'),
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.number,
                    )),
                Padding(
                    padding: EdgeInsets.all(15.0),
                    child: TextFormField(
                      decoration:
                          const InputDecoration(labelText: 'Expiration Year'),
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.number,
                    )),
                Row(
                  children: [
                    // Continue Shopping Button
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          style: TextButton.styleFrom(
                            side: BorderSide(
                              color: Theme.of(context).colorScheme.tertiary,
                              width: 3,
                            ),
                            foregroundColor:
                                Theme.of(context).colorScheme.tertiary,
                            backgroundColor: Colors.white,
                            textStyle: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () => Navigator.pushNamed(
                            context,
                            CustomerInfoPage.routeName,
                          ),
                          child: const Text('Back'),
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    // Check Out Button
                    Expanded(
                      child: SizedBox(
                        height: 50,
                        child: ElevatedButton(
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            backgroundColor:
                                Theme.of(context).colorScheme.tertiary,
                            textStyle: const TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: () => Navigator.pushNamed(
                            context,
                            PaymentInfoPage.routeName,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text('Submit Payment'),
                              Icon(
                                Icons.arrow_forward,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ]),
        ));
  }
}
