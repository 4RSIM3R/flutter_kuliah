import 'package:flutter/material.dart';

class CartCreatePage extends StatelessWidget {
  const CartCreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Cart Create'),
      ),
    );
  }
}
