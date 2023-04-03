import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_state/pages/cart_page.dart';
import '../widgets/drink_item_widget.dart';
import '../providers/cart_provider.dart';
import '../data/globals.dart';

// List of milk to populate the Milk Dropdown
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
  static const String routeName = './drink_customize';

  // Booleans for customizations, set with checkboxes
  // Applied to the Drink as it is placed in the Cart
  bool isDecaf = false;
  bool hasExtraShot = false;
  bool hasWhippedCream = false;
  bool hasCaramelSyrup = false;
  bool hasHazelnutSyrup = false;
  bool hasVanillaSyrup = false;

  // cartId will become the unique identifer for each CartItem
  String cartId = '';
  // addonsDescription will show customizations for a CartItem on the CartPage
  String addonsDescription = '';
  int quantity = 1;
  double price = 0.0;

  String selectedSizeType = 'Small'; //Default size type
  String selectedMilkType = '2%'; // Default milk type

  // Called when 'Add To Order' is clicked. Generates the description for a
  // CartItem which is concatenated onto its drinkId to form a Key
  String generateAddonsDescription() {
    String addons = '$selectedSizeType, $selectedMilkType Milk';
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
      // Limited AppBar - An implied leading back-arrow is functionally
      // the same as 'Home'. A 'Cart' button is excluded to prevent confusion
      // around adding an item to the cart versus navigating without adding
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
            // Size Selection Text
            const Text(
              'Size:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            // Size Selection ButtonBar - functions like a set of radio buttons
            // OnPress sets the size to Small, Medium, or Large while also
            // setting the price appropriately. The appearance of each button
            // is changed with a Conditional (ternary) operator to appear
            // 'active' or 'inactive'
            ButtonBar(
              children: [
                ElevatedButton(
                  style: TextButton.styleFrom(
                    foregroundColor: selectedSizeType == 'Small'
                        ? Colors.white
                        : Colors.black45,
                    backgroundColor: selectedSizeType == 'Small'
                        ? Theme.of(context).colorScheme.tertiary
                        : Globals.buttonGrey,
                  ),
                  onPressed: () {
                    setState(() => selectedSizeType = 'Small');
                    setState(() => price = args.smallArg);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Small \$${args.smallArg.toStringAsFixed(2)}'),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: TextButton.styleFrom(
                    foregroundColor: selectedSizeType == 'Medium'
                        ? Colors.white
                        : Colors.black45,
                    backgroundColor: selectedSizeType == 'Medium'
                        ? Theme.of(context).colorScheme.tertiary
                        : Globals.buttonGrey,
                  ),
                  onPressed: () {
                    setState(() => selectedSizeType = 'Medium');
                    setState(() => price = args.mediumArg);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Medium \$${args.mediumArg.toStringAsFixed(2)}'),
                    ],
                  ),
                ),
                ElevatedButton(
                  style: TextButton.styleFrom(
                    foregroundColor: selectedSizeType == 'Large'
                        ? Colors.white
                        : Colors.black45,
                    backgroundColor: selectedSizeType == 'Large'
                        ? Theme.of(context).colorScheme.tertiary
                        : Globals.buttonGrey,
                  ),
                  onPressed: () {
                    setState(() => selectedSizeType = 'Large');
                    setState(() => price = args.largeArg);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Large \$${args.largeArg.toStringAsFixed(2)}'),
                    ],
                  ),
                ),
              ],
            ),
            // Milk Selection Text
            const Text(
              'Milk:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            // Milk Selection Dropdown - populated with List milkTypes
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
            // Options Selection Text
            const Text(
              'Options:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            // Column of checkboxes for customizations
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
            // Syrups Selection Text
            const Text(
              'Syrups:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            // Column of Syrups with checkboxes - can select multiple syrups
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
      // Persistent Footer allows customer to Add To Cart without scrolling down
      persistentFooterButtons: [
        Row(
          children: [
            Expanded(
              child: SizedBox(
                  height: 50,
                  // Row displays the quantity to be added
                  // Buttons for incrementing and decrementing
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {
                          if (quantity > 1) {
                            setState(() {
                              quantity--;
                            });
                          }
                        },
                        icon: const Icon(Icons.remove_circle),
                      ),
                      Text(
                        quantity.toString(),
                        style: const TextStyle(fontSize: 30.0),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            quantity++;
                          });
                        },
                        icon: const Icon(Icons.add_circle_outline),
                      ),
                    ],
                  )),
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
                    // If the customer doesn't change the default size, this
                    // applies the default price. args.smallArg is not available
                    // in the constructor, so it is applied here
                    if (price == 0.0) {
                      price = args.smallArg;
                    }
                    // Sending quantity to cart.addItem fails without this assignment
                    quantity = quantity;
                    cartId = args.idArg;
                    addonsDescription = generateAddonsDescription();
                    cartId += addonsDescription;
                    cart.addItem(
                      cartId,
                      args.nameArg,
                      price,
                      quantity,
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
