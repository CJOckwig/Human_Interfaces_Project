import 'package:flutter/material.dart';

import '../data/drink_data.dart';
import '../models/drink_model.dart';

class Drinks with ChangeNotifier {
  List<Drink> _drinks = DRINK_ITEMS;

  List<Drink> get drinks {
    return [..._drinks];
  }

  Drink findById(String drinkId) {
    return _drinks.firstWhere((drink) => drink.drinkId == drinkId);
  }
}
