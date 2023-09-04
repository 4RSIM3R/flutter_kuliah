import 'package:flutter/material.dart';

class CartMainPage extends StatelessWidget {
  const CartMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Cart Shop'),
      ),
    );
  }
}