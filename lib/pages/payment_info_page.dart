//CJOckwig
//Payment information Page

import 'package:flutter/material.dart';

class PaymentInfoPage extends StatelessWidget {
  const PaymentInfoPage({super.key});
  static const String routeName = '/payment_info';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customer Information'),
      ),
      body: const Center(
        child: Text('Put payment info here pages/customer_info_page.dart'),
      ),
    );
  }
}
