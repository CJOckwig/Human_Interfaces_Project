//CJOckwig Customer info page
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../data/globals.dart';

class CustomerInfoPage extends StatelessWidget {
  const CustomerInfoPage({super.key});
  static const String routeName = '/customer_info';

  @override
  Widget build(BuildContext context) {
    var selectedOption;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Customer Information'),
          backgroundColor: Globals.caribouBrown,
          shadowColor: Globals.caribouLightGrey,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(padding: EdgeInsets.all(5)),
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
