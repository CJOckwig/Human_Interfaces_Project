class CartItem {
  final String cartId;
  final String name;
  final int quantity;
  late double price;
  final String addons;

  CartItem({
    required this.cartId,
    required this.name,
    required this.quantity,
    required this.price,
    required this.addons,
  });
}
