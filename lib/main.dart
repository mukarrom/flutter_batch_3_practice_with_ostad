import 'package:flutter/material.dart';
// import 'package:practice_with_ostad/rafat/navigation/home.dart';
// import 'package:practice_with_ostad/rabbil/sum_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ProductList(),
    );
  }
}

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List myProduct = [
    {'productName': 'Chair', 'productPrice': 200, 'bought': 0},
    {'productName': 'Table', 'productPrice': 200, 'bought': 0},
    {'productName': 'Monitor', 'productPrice': 200, 'bought': 0},
  ];
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product List'),
      ),
      body: ListView.builder(
        itemCount: myProduct.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(myProduct[index]['productName']),
            subtitle: Text(myProduct[index]['productPrice'].toString()),
            trailing: Column(
              children: [
                const Text('Counter: 0'),
                ElevatedButton(
                    onPressed: () {
                      count++;
                      setState(() {});
                    },
                    child: const Text('buy now'))
              ],
            ),
          );
        },
      ),
    );
  }
}
