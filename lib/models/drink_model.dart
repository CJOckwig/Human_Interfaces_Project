// The size of a drink
import 'package:flutter/material.dart';

//enum DrinkSize { small, medium, large }

// The type of milk used in a drink
//enum Milk { none, onePct, twoPct, whole, oat, almond }

class Drink {
  final String drinkId;
  final String name;
  final String description;
  final String imagePath;
  //final Map pricePerSize;
  final double smallPrice;
  final double mediumPrice;
  final double largePrice;
  //late double _price;
  //late DrinkSize _size;

  // Return a new instance of Drink. The price is set
  // to reflect the size as found in pricePerSize
  Drink({
    required this.drinkId,
    required this.name,
    required this.description,
    required this.imagePath,
    //required this.pricePerSize,
    required this.smallPrice,
    required this.mediumPrice,
    required this.largePrice,
    //DrinkSize size = DrinkSize.small,
  });
}
  // ) {
  //   setSize(size);
  // }

  // Getter for _price
  // double getPrice() {
  //   return _price;
  // }

  // Setter for _size, also set _price based
  // on the size as found in pricePerSize
  // void setSize(DrinkSize newSize) {
  //   _size = newSize;

  //   switch (_size) {
  //     case DrinkSize.small:
  //       _price = pricePerSize["small"];
  //       break;
  //     case DrinkSize.medium:
  //       _price = pricePerSize["medium"];
  //       break;
  //     case DrinkSize.large:
  //       _price = pricePerSize["large"];
  //       break;
  //   }
  // }

  // // Getter for _size
  // DrinkSize getSize() {
  //   return _size;
  // }

