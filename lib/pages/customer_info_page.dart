//CJOckwig Customer info page
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
//pages imports
import '../pages/products_overview_page.dart';
import '../pages/cart_page.dart';
import '../providers/cust_provider.dart';
import '../data/globals.dart';

class CustomerInfoPage extends StatelessWidget {
  const CustomerInfoPage({super.key});
  static const String routeName = '/customer_info';

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
              ProductsOverviewPage.routeName,
            ),
          ),
          title: const Text('Customer Info'),
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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(padding: EdgeInsets.all(15)),
            SizedBox(width: 16),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'First name',
                  border: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Globals.caribouBrown, width: 2.0),
                  ),
                ),
              ),
            ),
            Expanded(
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
            Expanded(
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
            Expanded(
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
            DropdownButton(
              items: const [
                DropdownMenuItem(value: 1, child: Text('Brookings')),
                DropdownMenuItem(value: 2, child: Text('Sioux Falls')),
              ],
              onChanged: (selectedOption) {
                selectedOption = selectedOption;
              },
              value: selectedOption,
            ),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                BackButton(
                  onPressed: () {},
                ),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    //foregroundColor: Globals.coffeeCream,
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                        side: BorderSide(color: Globals.caribouBrown),
                      ),
                    ),
                  ),
                  child: Text('proceed to payment screen'),
                ),
              ],
            )
          ],
        ));
  }
}
