import 'package:flutter/material.dart';
import 'package:practice_with_ostad/rafat/navigation/about.dart';
import 'package:practice_with_ostad/rafat/navigation/products.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String message = 'I am in home page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home page'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(message),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Product route
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const ProductScreen(
                                      title: 'Product Activities',
                                    ))).then((value) {
                          message = value;
                          setState(() {});
                        });
                      },
                      child: const Text('Product Screen')),
                  const SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                                builder: (_) => const AboutScreen()),
                            (route) => true);
                      },
                      child: const Text('About Screen')),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
