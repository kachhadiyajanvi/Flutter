import 'package:flutter/material.dart';
import 'package:navigationapp/screens/message_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.brown)
      ),
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(tabs: [
              Tab(icon: Icon(Icons.message)),
              Tab(icon: Icon(Icons.list)),
              Tab(icon: Icon(Icons.video_call)),
            ]),
            title: const Text('Home'),
          ),
          body: const TabBarView(
            children: [
              Text("This is Message Tab"),
              MessageScreen(),
              Text("This is Meet Tab"),
            ],
          ),
        ),
      ),
    );
  }
}