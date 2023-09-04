import 'package:flutter/material.dart';
import 'package:kuliah/models/cart_model.dart';

class CartCard extends StatelessWidget {
  const CartCard({
    super.key,
    required this.model,
    required this.onTap,
  });

  final CartModel model;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey[100]!,
              blurRadius: 2,
              offset: const Offset(2, 2),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Item ${model.name}'),
            Text('${model.price}'),
          ],
        ),
      ),
    );
  }
}
