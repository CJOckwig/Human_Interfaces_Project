// // // widgets/product_item.dart

// // import 'package:flutter/material.dart';
// // import 'package:provider/provider.dart';

// // import '../pages/product_detail_page.dart';
// // import '../providers/cart_provider.dart';
// // import '../pages/cart_page.dart';

// // class ProductItem extends StatelessWidget {
// //   const ProductItem({
// //     super.key,
// //     // supports final properties
// //     required this.id,
// //     required this.title,
// //     required this.imageUrl,
// //   });

// //   // alternative - Product instance
// //   final String id;
// //   final String title;
// //   final String imageUrl;

// //   @override
// //   Widget build(BuildContext context) {
// //     final cart = Provider.of<Cart>(context, listen: false);
// //     return ClipRRect(
// //       borderRadius: BorderRadius.circular(10.0),
// //       child: GridTile(
// //         // no rounded corner support
// //         footer: GridTileBar(
// //           backgroundColor: Theme.of(context).colorScheme.primary,
// //           leading: IconButton(
// //             onPressed: () {},
// //             icon: const Icon(Icons.favorite),
// //             color: Theme.of(context).colorScheme.secondary,
// //           ),
// //           title: Text(
// //             title,
// //             textAlign: TextAlign.center,
// //           ),
// //           // trailing button as it was before
// //           // trailing: IconButton(
// //           //   onPressed: () {},
// //           //   icon: const Icon(Icons.shopping_cart),
// //           //   color: Theme.of(context).colorScheme.secondary,
// //           // ),
// //           // Cart button for adding a product to the cart, temporary use
// //           trailing: IconButton(
// //             onPressed: () {
// //               cart.addItem(DateTime.now().toString(), 'Mocha', 3.75);
// //               Navigator.pushNamed(context, CartPage.routeName);
// //             },
// //             icon: const Icon(Icons.shopping_cart),
// //             color: Theme.of(context).colorScheme.secondary,
// //           ),
// //         ),
// //         child: GestureDetector(
// //           onTap: () {
// //             Navigator.pushNamed(
// //               context,
// //               ProductDetailPage.routeName,
// //               arguments: id,
// //             );
// //           },
// //           child: Image.network(
// //             imageUrl,
// //             fit: BoxFit.cover,
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }

// // widgets/product_item.dart

// import 'package:flutter/material.dart';

// import '../pages/product_detail_page.dart';

// class ProductItem extends StatelessWidget {
//   const ProductItem({
//     super.key,
//     // supports final properties
//     required this.id,
//     required this.title,
//     required this.imageUrl,
//   });

//   // alternative - Product instance
//   final String id;
//   final String title;
//   final String imageUrl;

//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(5.0),
//       child: GridTile(
//         // no rounded corner support
//         footer: GridTileBar(
//           backgroundColor: Theme.of(context).colorScheme.primary,
//           title: Text(
//             title,
//             textAlign: TextAlign.center,
//           ),
//         ),
//         child: GestureDetector(
//           onTap: () {
//             Navigator.pushNamed(
//               context,
//               ProductDetailPage.routeName,
//               arguments: id,
//             );
//           },
//           child: Image.network(
//             imageUrl,
//             fit: BoxFit.scaleDown,
//           ),
//         ),
//       ),
//     );
//   }
// }
