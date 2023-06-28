import 'package:flutter/material.dart';

class MyToDoApp extends StatelessWidget {
  const MyToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "ToDo App",
      home: ToDoHomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

/// ToDo Home Screen
class ToDoHomeScreen extends StatefulWidget {
  const ToDoHomeScreen({super.key});

  @override
  State<ToDoHomeScreen> createState() => _ToDoHomeScreenState();
}

class _ToDoHomeScreenState extends State<ToDoHomeScreen> {
  final TextEditingController _titleTEController = TextEditingController();
  final TextEditingController _descriptionTEController =
      TextEditingController();
  List<ToDo> todos = [
    // ToDo('My ToDo', 'todo description', false)
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
              onPressed: () {
                todos.clear();
                if (mounted) {
                  setState(() {});
                }
              },
              icon: const Icon(Icons.playlist_remove))
        ],
      ),
      body: ListView.separated(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            onLongPress: () {
              todos[index].isDone = !todos[index].isDone;
              if (mounted) {
                setState(() {});
              }
            },
            leading: todos[index].isDone
                ? const Icon(Icons.check_box_outlined)
                : const Icon(Icons.check_box_outline_blank),
            title: Text(todos[index].title),
            subtitle: Text(todos[index].description),
            trailing: IconButton(
                onPressed: () {
                  todos.removeAt(index);
                  if (mounted) {
                    setState(() {});
                  }
                },
                icon: const Icon(Icons.delete_forever_outlined)),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            height: 0,
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showAddNewTodoModalSheet();
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  void showAddNewTodoModalSheet() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const Text('Add New Todo'),
                TextField(
                  controller: _titleTEController,
                  decoration: const InputDecoration(hintText: 'Title'),
                ),
                TextField(
                  controller: _descriptionTEController,
                  decoration: const InputDecoration(hintText: 'Description'),
                ),
                ElevatedButton(
                    onPressed: () {
                      if (_descriptionTEController.text.trim().isNotEmpty &&
                          _titleTEController.text.trim().isNotEmpty) {
                        todos.add(ToDo(_titleTEController.text.trim(),
                            _descriptionTEController.text.trim(), false));
                        if (mounted) {
                          setState(() {});
                        }

                        _titleTEController.clear();
                        _descriptionTEController.clear();
                        Navigator.pop(context);
                      }
                    },
                    child: const Text('Add'))
              ],
            ),
          );
        });
  }
}

class ToDo {
  String title, description;
  bool isDone;
  ToDo(this.title, this.description, this.isDone);
}
