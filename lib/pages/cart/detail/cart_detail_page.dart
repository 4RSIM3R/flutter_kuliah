import 'package:flutter/material.dart';
import 'package:kuliah/models/cart_model.dart';

class CartDetailPage extends StatelessWidget {
  const CartDetailPage({super.key, required this.model});

  final CartModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Cart Detail'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Item ${model.name}'),
              const SizedBox(height: 8),
              Text('Price ${model.price}'),
            ],
          ),
        ),
      ),
    );
  }
}
