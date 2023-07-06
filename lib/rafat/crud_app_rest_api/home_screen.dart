import 'package:flutter/material.dart';
import 'package:practice_with_ostad/rafat/crud_app_rest_api/add_new_product_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CRUD'),
      ),
      body: ListView.separated(
        itemCount: 10,
        itemBuilder: (context, index) {
          return ListTile(
            onLongPress: () {
              showDialog(
                context: context,
                builder: (_) {
                  return AlertDialog(
                    titlePadding: const EdgeInsets.only(left: 16),
                    contentPadding: const EdgeInsets.only(
                      left: 8,
                      right: 8,
                      bottom: 8,
                    ),
                    title: const Row(
                      children: [
                        Text('Choose an action'),
                        Spacer(),
                        Icon(Icons.close),
                      ],
                    ),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                          onTap: () {},
                          leading: const Icon(Icons.edit),
                          title: const Text('Edit'),
                        ),
                        const Divider(
                          height: 0,
                        ),
                        ListTile(
                          onTap: () {},
                          leading: const Icon(Icons.delete),
                          title: const Text('Delete'),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            title: const Text('Product Name'),
            subtitle: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Product code'),
                Text('Total price'),
                Text('Available units'),
              ],
            ),
            leading: Image.network(
              'https://images.unsplash.com/photo-1517336714731-489689fd1ca8?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bWFjYm9vayUyMHByb3xlbnwwfHwwfHx8MA%3D%3D&w=1000&q=80',
              width: 50,
              errorBuilder: (_, __, ___) {
                return const Icon(
                  Icons.image,
                  size: 32,
                );
              },
            ),
            trailing: const Text('Unit price'),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            height: 0,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) => const AddNewProductScreen()),
              ));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
