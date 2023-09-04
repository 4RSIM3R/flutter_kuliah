import 'package:flutter/material.dart';
import 'package:kuliah/components/convert_button.dart';
import 'package:kuliah/components/convert_input.dart';

class ConvertPage extends StatefulWidget {
  const ConvertPage({super.key});

  @override
  State<ConvertPage> createState() => _ConvertPageState();
}

class _ConvertPageState extends State<ConvertPage> {
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text("Konverter Suhu"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            ConvertInput(hint: 'Masukkan Suhu Dalam Celcius', controller: controller),
            Expanded(child: Container()),
            ConvertButton(
              title: 'Konversi',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
