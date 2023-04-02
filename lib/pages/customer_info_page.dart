//CJOckwig Customer info page
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//pages imports

import '../pages/drink_selection_page.dart';

import '../pages/cart_page.dart';
import '../pages/payment_info_page.dart';

import '../data/globals.dart';

class CustomerInfoPage extends StatelessWidget {
  const CustomerInfoPage({super.key});
  static const String routeName = './customer_info_page';

  @override
  Widget build(BuildContext context) {
    var selectedOption;
    //final cust = Provider.of<Customer>(context);
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
          title: const Text('Customer Information'),
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
            margin: EdgeInsets.all(15.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'First name',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Globals.caribouBrown, width: 2.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Last name',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Globals.caribouBrown,
                          width: 2.0,
                        )),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Email',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Globals.caribouBrown,
                          width: 2.0,
                        )),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                  child: Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        border: OutlineInputBorder(
                            borderSide: BorderSide(
                          color: Globals.caribouBrown,
                          width: 2.0,
                        )),
                      ),
                    ),
                  ),
                ),
                DropdownButton(
                  items: [
                    DropdownMenuItem(value: 1, child: Text('Brookings')),
                    DropdownMenuItem(value: 2, child: Text('Sioux Falls')),
                  ],
                  onChanged: (selectedOption) {},
                  value: selectedOption,
                ),
                Flexible(
                  child: Row(
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
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () => Navigator.pushNamed(
                              context,
                              DrinkSelectionPage.routeName,
                            ),
                            child: const Text('Continue Shopping'),
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
                                fontSize: 15.0,
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
                                Text('Payment Information'),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )));
  }
}
