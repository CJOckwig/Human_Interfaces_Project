import '../models/drink.dart';

// All the drinks that can be sold
Map drinks = {
  "latte": Drink(
      name: "Latte",
      imageUrl: "url",
      pricePerSize: {"small": 2.5, "medium": 2.7, "large": 2.9}),
      
  "mocha": Drink(
      name: "Mocha",
      imageUrl: "url",
      pricePerSize: {"small": 2.7, "medium": 2.9, "large": 3.1}),
  "drip": Drink(
    name: "Drip",
    imageUrl: "url",
    pricePerSize: {"small": 1.9, "medium": 2.0, "large": 2.1},
    milk: Milk.none,
  ),
};
