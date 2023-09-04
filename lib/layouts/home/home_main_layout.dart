import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kuliah/components/news_card.dart';

class HomeMainLayout extends StatelessWidget {
  const HomeMainLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            'https://media.cnn.com/api/v1/images/stellar/prod/221126143352-weston-mckennie.jpg?c=original',
            fit: BoxFit.cover,
            height: 200,
            width: double.infinity,
          ),
          const SizedBox(height: 8),
           Text(
            'Costa Mendekat Ke Palmerias',
            style: GoogleFonts.plusJakartaSans(fontSize: 21
            ),
          ),
          const SizedBox(height: 8),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(8),
            decoration: const BoxDecoration(color: Colors.purple),
            child: const Text("Transfer"),
          ),
          const SizedBox(height: 8),
          Column(
            children: List.generate(10, (index) =>  const NewsCard(title: "Agil Operator",)),
          ),
        ],
      ),
    );
  }
}
