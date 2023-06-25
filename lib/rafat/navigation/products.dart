import 'package:flutter/material.dart';
import 'package:practice_with_ostad/rafat/navigation/about.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Back button
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, 'I come back from product Screen');
                  },
                  child: const Text('Back')),
              const SizedBox(
                width: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (_) => const AboutScreen()));
                  },
                  child: const Text('About Activity'))
            ],
          ),
        ),
      ),
    );
  }
}
