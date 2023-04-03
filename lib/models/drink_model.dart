// Drink class with fields needed for drink_selection_page display
class Drink {
  final String drinkId;
  final String name;
  final String description;
  final String imagePath;
  final double smallPrice;
  final double mediumPrice;
  final double largePrice;

  // Return a new instance of Drink.
  Drink({
    required this.drinkId,
    required this.name,
    required this.description,
    required this.imagePath,
    required this.smallPrice,
    required this.mediumPrice,
    required this.largePrice,
  });
}
