import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Todos',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
        useMaterial3: true,
      ),
      home: const TodoScreen(),
    );
  }
}

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  // Controller for the text input
  final TextEditingController _controller = TextEditingController();

  // List to hold our tasks
  final List<Todo> _todos = [];

  void _addTodo() {
    final text = _controller.text.trim();
    if (text.isNotEmpty) {
      setState(() {
        _todos.add(Todo(title: text));
        _controller.clear();
      });
    }
    // Optional: you can add a snackbar for empty input if you want
    else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please enter a task")),
      );
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Todos"),
        centerTitle: true,
      ),

      body: Column(
        children: [
          // Input area
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      hintText: "What needs to be done?",
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 12,
                      ),
                    ),
                    onSubmitted: (_) => _addTodo(), // Enter key also adds
                  ),
                ),
                const SizedBox(width: 12),
                ElevatedButton(
                  onPressed: _addTodo,
                  child: const Text("Add"),
                ),
              ],
            ),
          ),

          // List of todos
          Expanded(
            child: _todos.isEmpty
                ? const Center(
                    child: Text(
                      "No tasks yet\nAdd your first task ↑",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  )
                : ListView.builder(
                    itemCount: _todos.length,
                    itemBuilder: (context, index) {
                      final todo = _todos[index];
                      return TodoItem(
                        todo: todo,
                        onChanged: (bool? value) {
                          setState(() {
                            todo.isCompleted = value ?? false;
                          });
                        },
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}

// Data model
class Todo {
  final String title;
  bool isCompleted;

  Todo({
    required this.title,
    this.isCompleted = false,
  });
}

// One row widget
class TodoItem extends StatelessWidget {
  final Todo todo;
  final ValueChanged<bool?> onChanged;

  const TodoItem({
    super.key,
    required this.todo,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Checkbox(
        value: todo.isCompleted,
        onChanged: onChanged,
      ),
      title: Text(
        todo.title,
        style: TextStyle(
          decoration: todo.isCompleted ? TextDecoration.lineThrough : null,
          color: todo.isCompleted ? Colors.grey.shade600 : null,
          fontSize: 16,
        ),
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
    );
  }
}