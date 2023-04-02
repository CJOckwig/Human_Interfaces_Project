import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_state/pages/cart_page.dart';
import '../widgets/drink_item_widget.dart';
import '../models/drink_model.dart';
import '../providers/cart_provider.dart';

const List<String> milkTypes = <String>[
  'None',
  '1%',
  '2%',
  'Whole',
  'Oat',
  'Almond'
];

class DrinkCustomizePageFull extends StatefulWidget {
  const DrinkCustomizePageFull({super.key});

  @override
  DrinkCustomizePage createState() => DrinkCustomizePage();
}

class DrinkCustomizePage extends State<DrinkCustomizePageFull> {
  static const String routeName = '/drink_customize';

  bool isDecaf = false;
  bool hasExtraShot = false;
  bool hasWhippedCream = false;
  bool hasCaramelSyrup = false;
  bool hasHazelnutSyrup = false;
  bool hasVanillaSyrup = false;

  String cartId = '';
  String addonsDescription = '';

  String selectedSizeType = 'Small'; //Default size type
  List<String> sizeTypes = ['Small', 'Medium', 'Large'];
  String selectedMilkType = '2%'; // Default milk type

  String generateAddonsDescription() {
    String addons = '$selectedSizeType, $selectedMilkType';
    if (isDecaf) {
      addons += ', Decaf';
    }
    if (hasExtraShot) {
      addons += ', Extra Shot';
    }
    if (hasWhippedCream) {
      addons += ', Whipped Cream';
    }
    if (hasCaramelSyrup) {
      addons += ', Caramel';
    }
    if (hasHazelnutSyrup) {
      addons += ', Hazelnut';
    }
    if (hasVanillaSyrup) {
      addons += ', Vanilla';
    }
    return addons;
  }

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)?.settings.arguments as DrinkArguments;
    final cart = Provider.of<Cart>(context, listen: false);
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
                args.nameArg,
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
              children: [
                CheckboxListTile(
                  title: const Text('Extra Shot'),
                  value: hasExtraShot,
                  onChanged: (bool? value) {
                    setState(() {
                      hasExtraShot = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  title: const Text('Whipped Cream'),
                  value: hasWhippedCream,
                  onChanged: (bool? value) {
                    setState(() {
                      hasWhippedCream = value!;
                    });
                  },
                ),
                CheckboxListTile(
                  title: const Text('Decaf'),
                  value: isDecaf,
                  onChanged: (bool? value) {
                    setState(() {
                      isDecaf = value!;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'Syrups:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Column(
              children: [
                CheckboxListTile(
                    title: const Text('Caramel'),
                    value: hasCaramelSyrup,
                    onChanged: (bool? value) {
                      setState(() {
                        hasCaramelSyrup = value!;
                      });
                    }),
                CheckboxListTile(
                    title: const Text('Hazelnut'),
                    value: hasHazelnutSyrup,
                    onChanged: (bool? value) {
                      setState(() {
                        hasHazelnutSyrup = value!;
                      });
                    }),
                CheckboxListTile(
                    title: const Text('Vanilla'),
                    value: hasVanillaSyrup,
                    onChanged: (bool? value) {
                      setState(() {
                        hasVanillaSyrup = value!;
                      });
                    }),
              ],
            ),
          ],
        ),
      ),
      persistentFooterButtons: [
        Row(
          children: [
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
                  onPressed: () {
                    cartId = args.idArg;
                    addonsDescription = generateAddonsDescription();
                    cartId += addonsDescription;
                    cart.addItem(
                      // id
                      cartId,
                      // name
                      args.nameArg,
                      // price
                      5.0,
                      addonsDescription,
                    );
                    Navigator.pushNamed(context, CartPage.routeName);
                  },
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
