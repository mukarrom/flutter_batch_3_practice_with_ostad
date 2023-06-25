import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  mySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Photo Gallery"),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          mySnackBar('Photos Uploaded Successfully!', context);
        },
        child: const Icon(Icons.cloud_upload),
      ),
      body: const MyAssignmentSix(),
    );
  }
}

class MyAssignmentSix extends StatelessWidget {
  const MyAssignmentSix({super.key});

  mySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: const Text(
              'Welcome to My Photo Gallery!',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                  ),
                  hintText: 'Search',
                  border: OutlineInputBorder()),
            ),
          ),
          Wrap(
            spacing: 8,
            runSpacing: 8,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(0),
                ),
                onPressed: () {
                  mySnackBar('Clicked on photo', context);
                },
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 3 - 12,
                  child: Card(
                    child: Column(
                      children: [
                        Image.network(
                          'https://images.unsplash.com/photo-1595356700395-6f14b5c1f33f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80',
                          fit: BoxFit.cover,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text(
                            'Caption',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(0),
                ),
                onPressed: () {
                  mySnackBar('Clicked on photo', context);
                },
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 3 - 12,
                  child: Card(
                    child: Column(
                      children: [
                        Image.network(
                          'https://images.unsplash.com/photo-1595356700395-6f14b5c1f33f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80',
                          fit: BoxFit.cover,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(16),
                          child: Text(
                            'Caption',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(0),
                ),
                onPressed: () {
                  mySnackBar('Clicked on photo', context);
                },
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 3 - 12,
                  child: Card(
                    child: Column(
                      children: [
                        Image.network(
                          'https://images.unsplash.com/photo-1595356700395-6f14b5c1f33f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80',
                          fit: BoxFit.cover,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(16),
                          child: Text(
                            'Caption',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(0),
                ),
                onPressed: () {
                  mySnackBar('Clicked on photo', context);
                },
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 3 - 12,
                  child: Card(
                    child: Column(
                      children: [
                        Image.network(
                          'https://images.unsplash.com/photo-1595356700395-6f14b5c1f33f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80',
                          fit: BoxFit.cover,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(16),
                          child: Text(
                            'Caption',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(0),
                ),
                onPressed: () {
                  mySnackBar('Clicked on photo', context);
                },
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 3 - 12,
                  child: Card(
                    child: Column(
                      children: [
                        Image.network(
                          'https://images.unsplash.com/photo-1595356700395-6f14b5c1f33f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80',
                          fit: BoxFit.cover,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(16),
                          child: Text(
                            'Caption',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(0),
                ),
                onPressed: () {
                  mySnackBar('Clicked on photo', context);
                },
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 3 - 12,
                  child: Card(
                    child: Column(
                      children: [
                        Image.network(
                          'https://images.unsplash.com/photo-1595356700395-6f14b5c1f33f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=774&q=80',
                          fit: BoxFit.cover,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(16),
                          child: Text(
                            'Caption',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          const ListTile(
            leading: Icon(Icons.image),
            title: Text('Sample Photo 1'),
            subtitle: Text('Category 1'),
          ),
          const ListTile(
            leading: Icon(Icons.image),
            title: Text('Sample Photo 1'),
            subtitle: Text('Category 1'),
          ),
          const ListTile(
            leading: Icon(Icons.image),
            title: Text('Sample Photo 1'),
            subtitle: Text('Category 1'),
          ),
        ],
      ),
    );
  }
}
