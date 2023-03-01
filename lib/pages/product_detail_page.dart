

// pages/product_detail_page.dart

import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  static const String routeName = '/product_detail';

  @override
  Widget build(BuildContext context) {
    final productId =
      ModalRoute.of(context)?.settings.arguments as String;
    // get Product based on productId
    // won't work by passing data through constructors
    // requires a central state management solution
    return Scaffold(
      appBar: AppBar(
        title: const Text('title'),
      ),
    );
  }
}

