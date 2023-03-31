//CJOckwig
//Payment information Page

import 'package:flutter/material.dart';
//import 'package:provider/provider.dart';
import '../pages/cart_page.dart';

import '../data/globals.dart';
import '../providers/cart_provider.dart';
import '../pages/products_overview_page.dart';

class PaymentInfoPage extends StatelessWidget {
  const PaymentInfoPage({super.key});
  static const String routeName = '/payment_info';

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
      body: Column(
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

            Expanded(
                child: TextFormField(
              decoration:
                  const InputDecoration(labelText: 'Credit Information'),
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.number,
            )),
            Expanded(
                child: TextFormField(
              decoration: const InputDecoration(labelText: 'Security Code'),
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.number,
            ))
          ]),
    );
  }
}
