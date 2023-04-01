
// data/temp_data.dart

import '../models/product.dart';
import '../models/drink.dart';

// ignore: non_constant_identifier_names
List<Drink> TEMP_PRODUCTS = [
    Drink(
      name: 'Latte',
      imageUrl:
          'https://png.pngtree.com/element_pic/00/16/08/1457afffbf03318.jpg',
      pricePerSize: {"small": 2.5, "medium": 2.7, "large": 2.9},
      milk: Milk.none,
      isDecaf: false,
      hasExtraShot: false,
      hasWhippedCream: false,
      hasCaramelSyrup: false,
      hasHazelnutSyrup: false,
      hasVanillaSyrup: false,
    ),
    Drink(
      name: 'Mocha',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQSyI8HUXiqKnkRjXwYA73XRIK5jJI9mdHRRQ&usqp=CAU',
      pricePerSize: {"small": 2.7, "medium": 2.9, "large": 3.1},
      milk: Milk.onePct,
      isDecaf: false,
      hasExtraShot: false,
      hasWhippedCream: false,
      hasCaramelSyrup: false,
      hasHazelnutSyrup: false,
      hasVanillaSyrup: false,
    ),
    Drink(
      name: 'Drip',
      imageUrl:
          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLZ5-i5O5PhkdRKKgxFOY7S0QcAXbnGVd37Q&usqp=CAU',
      pricePerSize: {"small": 1.9, "medium": 2.0, "large": 2.1},
      milk: Milk.none,
      isDecaf: false,
      hasExtraShot: false,
      hasWhippedCream: false,
      hasCaramelSyrup: false,
      hasHazelnutSyrup: false,
      hasVanillaSyrup: false,
    ),
  ];


