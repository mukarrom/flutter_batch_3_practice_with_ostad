import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Todo App',
      debugShowCheckedModeBanner: false,
      home: const MyTodoScreen(),
      themeMode: ThemeMode.system,
      darkTheme:
          ThemeData(brightness: Brightness.dark, primarySwatch: Colors.grey),
      theme:
          ThemeData(brightness: Brightness.light, primarySwatch: Colors.green),
    );
  }
}

class MyTodoScreen extends StatefulWidget {
  const MyTodoScreen({super.key});

  @override
  State<MyTodoScreen> createState() => _MyTodoScreenState();
}

class _MyTodoScreenState extends State<MyTodoScreen> {
  List<Todo> todos = [];
  final TextEditingController _titleTextEditController =
      TextEditingController();
  final TextEditingController _descriptionTextEditController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //\\  App Bar //\\
      appBar: AppBar(
        title: const Text('To Do'),
        actions: [
          IconButton(
            onPressed: () {
              todos.clear();
              if (mounted) {
                setState(() {});
              }
            },
            icon: const Icon(Icons.playlist_remove),
            tooltip: 'Clear all todo',
          )
        ],
      ),

      ///\\  FAB Button //\\\
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showAddNewModalBottomSheet();
          if (mounted) {
            setState(() {});
          }
        },
        child: const Icon(Icons.add),
      ),

      ///\\  List view //\\\
      body: ListView.separated(
        itemCount: todos.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onLongPress: () {
              _titleTextEditController.text = todos[index].title;
              _descriptionTextEditController.text = todos[index].description;
              showAddNewModalBottomSheet(index);
            },
            onTap: () {
              todos[index].isDone = !todos[index].isDone;
              if (mounted) {
                setState(() {});
              }
            },
            title: Text(
              todos[index].title,
              style: TextStyle(
                decoration: todos[index].isDone
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
              ),
            ),
            subtitle: Text(todos[index].description),
            leading: todos[index].isDone
                ? const Icon(Icons.check_box_outlined)
                : const Icon(Icons.check_box_outline_blank),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: () {
                todos.removeAt(index);
                if (mounted) {
                  setState(() {});
                }
              },
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            height: 0,
          );
        },
      ),
    );
  }

  ///\\  Bottom Sheet //\\\
  void showAddNewModalBottomSheet([index]) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const Text('Add new todos'),
                TextField(
                  autofocus: true,
                  controller: _titleTextEditController,
                  decoration: const InputDecoration(
                    hintText: 'Title',
                  ),
                ),
                TextField(
                  controller: _descriptionTextEditController,
                  decoration: const InputDecoration(hintText: 'Description'),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_titleTextEditController.text.trim().isNotEmpty &&
                          _descriptionTextEditController.text
                              .trim()
                              .isNotEmpty) {
                        if (index == null) {
                          todos.add(Todo(
                              _titleTextEditController.text.trim(),
                              _descriptionTextEditController.text.trim(),
                              false));
                        } else {
                          todos[index].title = _titleTextEditController.text;
                          todos[index].description =
                              _descriptionTextEditController.text;
                        }
                        if (mounted) {
                          setState(() {});
                          _titleTextEditController.clear();
                          _descriptionTextEditController.clear();
                          Navigator.pop(context);
                        }
                      }
                    },
                    child: const Text('Add Todo'))
              ],
            ),
          );
        });
  }
}

///\\ To-do model //\\\
class Todo {
  String title, description;
  bool isDone;
  Todo(this.title, this.description, this.isDone);
}
