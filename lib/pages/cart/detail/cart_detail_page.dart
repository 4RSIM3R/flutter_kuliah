import 'package:flutter/material.dart';

class CartDetailPage extends StatelessWidget {
  const CartDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Cart Detail'),
      ),
    );
  }
}
