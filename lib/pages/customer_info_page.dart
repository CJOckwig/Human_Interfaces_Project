//CJOckwig Customer info page
import 'package:flutter/material.dart';

class CustomerInfoPage extends StatelessWidget {
  const CustomerInfoPage({super.key});
  static const String routeName = '/customer_info';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customer Information'),
      ),
      body: const Center(
        child: Text('Put customer info here pages/customer_info_page.dart'),
      ),
    );
  }
}
