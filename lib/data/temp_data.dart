// // data/temp_data.dart

// import '../models/product.dart';

// // ignore: non_constant_identifier_names
// List<Product> TEMP_PRODUCTS = [
//     Product(
//       id: 'p1',
//       title: 'Red Shirt',
//       description: 'A red shirt - it is pretty red!',
//       price: 29.99,
//       imageUrl:
//           'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
//     ),
//     Product(
//       id: 'p2',
//       title: 'Trousers',
//       description: 'A nice pair of trousers.',
//       price: 59.99,
//       imageUrl:
//           'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
//     ),
//     Product(
//       id: 'p3',
//       title: 'Yellow Scarf',
//       description: 'Warm and cozy - exactly what you need for the winter.',
//       price: 19.99,
//       imageUrl:
//           'https://live.staticflickr.com/4043/4438260868_cc79b3369d_z.jpg',
//     ),
//     Product(
//       id: 'p4',
//       title: 'A Pan',
//       description: 'Prepare any meal you want.',
//       price: 49.99,
//       imageUrl:
//           'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
//     ),
//   ];

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
