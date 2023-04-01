// pages/product_detail_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_state/pages/cart_page.dart';

class ProductDetailPageFull extends StatefulWidget {
  const ProductDetailPageFull({super.key});

  @override
  ProductDetailPage createState() => ProductDetailPage();
}

class ProductDetailPage extends State<ProductDetailPageFull> {
  //const ProductDetailPage({super.key});
  String selectedSizeType = 'Small - \$3.75'; //Default size type
  List<String> sizeTypes = [
    'Small - \$3.75',
    'Medium - \$4.25',
    'Large - \$4.75'
  ];
  String selectedMilkType = 'None'; // Default milk type
  List<String> milkTypes = ['None', '1%', '2%', 'Whole', 'Oat', 'Almond'];
  List<String> selectedOptions = []; // List to store selected options
  List<String> availableOptions = ['Decaf', 'Extra Shot', 'Whipped Cream'];
  List<String> selectedSyrups = []; // List to store selected syrups
  List<String> availableSyrups = ['Caramel', 'Hazelnut', 'Vanilla'];
  static const String routeName = '/product_detail';

  //bool checkedValue = false;

  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context)?.settings.arguments as String;
    // get Product based on productId
    // won't work by passing data through constructors
    // requires a central state management solution
    return Scaffold(
      appBar: AppBar(
        title: const Text('Antelope Coffee'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            // Selected Drink displayed at the top in text
            Center(
              child: Text(
                productId, // Change to your main drink
                style:
                    const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              'Size:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            DropdownButton<String>(
              value: selectedSizeType,
              onChanged: (String? value) {
                setState(() {
                  selectedSizeType = value!;
                });
              },
              items: sizeTypes.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            const Text(
              'Milk:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            DropdownButton<String>(
              value: selectedMilkType,
              onChanged: (String? value) {
                setState(() {
                  selectedMilkType = value!;
                });
              },
              items: milkTypes.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            const SizedBox(height: 16),
            const Text(
              'Options:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Column(
              children: availableOptions.map((option) {
                return CheckboxListTile(
                  title: Text(option),
                  value: selectedOptions.contains(option),
                  onChanged: (checked) {
                    setState(() {
                      if (checked == true) {
                        selectedOptions.add(option);
                      } else {
                        selectedOptions.remove(option);
                      }
                    });
                  },
                );
              }).toList(),
            ),
            const SizedBox(height: 16),
            const Text(
              'Syrups:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Column(
              children: availableSyrups.map((syrup) {
                return CheckboxListTile(
                  title: Text(syrup),
                  value: selectedSyrups.contains(syrup),
                  onChanged: (checked) {
                    setState(() {
                      if (checked == true) {
                        selectedSyrups.add(syrup);
                      } else {
                        selectedSyrups.remove(syrup);
                      }
                    });
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
      persistentFooterButtons: [
        Row(
          children: [
            // Continue Shopping Button
            const Expanded(
              child: SizedBox(
                height: 50,
                child: Text('//qty selection here'),
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
                    backgroundColor: Theme.of(context).colorScheme.tertiary,
                    textStyle: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () => Navigator.pushNamed(
                    context,
                    CartPage.routeName,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text('Add To Cart'),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
