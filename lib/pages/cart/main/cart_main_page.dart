import 'package:flutter/material.dart';
import 'package:kuliah/components/card/cart_card.dart';
import 'package:kuliah/models/cart_model.dart';
import 'package:kuliah/routes/routes.dart';

class CartMainPage extends StatelessWidget {
  const CartMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Shopping List'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: List.generate(
            2,
            (index) => CartCard(
              model: CartModel(name: '$index', price: index * 1000),
              onTap: () {
                Navigator.pushNamed(context, Routes.detail, arguments: CartModel(name: '$index', price: index * 1000));
              },
            ),
          ),
        ),
      ),
    );
  }
}
