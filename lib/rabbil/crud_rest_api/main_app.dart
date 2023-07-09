import 'package:flutter/material.dart';
import 'package:practice_with_ostad/rabbil/crud_rest_api/screens/add_new_product_screen.dart';

class CrudRestApi extends StatelessWidget {
  const CrudRestApi({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: AddNewProductScreen(),
    );
  }
}
