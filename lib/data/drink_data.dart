import '../models/drink_model.dart';

// All the drinks that can be sold
// ignore: non_constant_identifier_names
List<Drink> DRINK_ITEMS = [
  Drink(
    drinkId: 'd01',
    name: "Latte",
    description: 'A shot of espresso with steamed milk',
    imagePath: 'assets/latteImage.jpg',
    smallPrice: 3.5,
    mediumPrice: 4.0,
    largePrice: 4.5,
  ),
  Drink(
    drinkId: 'd02',
    name: "Mocha",
    description: 'Chocolate with espresso and steamed milk',
    imagePath: 'assets/mochaImage.jpg',
    smallPrice: 3.75,
    mediumPrice: 4.25,
    largePrice: 4.75,
  ),
  Drink(
    drinkId: 'd03',
    name: "Drip",
    description: 'Our daily medium roast',
    imagePath: 'assets/coffeeImage.jpg',
    smallPrice: 2.75,
    mediumPrice: 3.0,
    largePrice: 3.25,
  ),
];
