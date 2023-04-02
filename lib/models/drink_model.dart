// The size of a drink
enum DrinkSize { small, medium, large }

// The type of milk used in a drink
enum Milk { none, onePct, twoPct, whole, oat, almond }

class Drink {
  final String drinkId;
  final String name;
  final String description;
  final String imageUrl;
  final Map pricePerSize;
  late double _price;
  late DrinkSize _size;
  Milk milk;
  bool isDecaf;
  bool hasExtraShot;
  bool hasWhippedCream;
  bool hasCaramelSyrup;
  bool hasHazelnutSyrup;
  bool hasVanillaSyrup;

  // Return a new instance of Drink. The price is set
  // to reflect the size as found in pricePerSize
  Drink({
    required this.drinkId,
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.pricePerSize,
    this.milk = Milk.twoPct,
    this.isDecaf = false,
    this.hasExtraShot = false,
    this.hasWhippedCream = false,
    this.hasCaramelSyrup = false,
    this.hasHazelnutSyrup = false,
    this.hasVanillaSyrup = false,
    DrinkSize size = DrinkSize.small,
  }) {
    setSize(size);
  }

  // Getter for _price
  double getPrice() {
    return _price;
  }

  // Setter for _size, also set _price based
  // on the size as found in pricePerSize
  void setSize(DrinkSize newSize) {
    _size = newSize;

    switch (_size) {
      case DrinkSize.small:
        _price = pricePerSize["small"];
        break;
      case DrinkSize.medium:
        _price = pricePerSize["medium"];
        break;
      case DrinkSize.large:
        _price = pricePerSize["large"];
        break;
    }
  }

  // Getter for _size
  DrinkSize getSize() {
    return _size;
  }
}
