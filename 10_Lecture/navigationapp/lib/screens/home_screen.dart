import 'package:flutter/material.dart';

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
        title: Text("Navigations"),
      ),
      body: Column(
        children: [
          Text("Home page"),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "/profile", arguments: "Janvi Kachhadiya");
          }, child: Text("Profile")),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, "/contact", arguments: {
              "collagename":"GLS University",
              "address": "Law Garden"
            });
          }, child: Text("Contact"))
        ],
      )
    );
  }
}