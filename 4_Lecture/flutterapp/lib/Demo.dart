
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterapp/StfWidget.dart';

class Demo extends StatelessWidget {
  const Demo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("FlutterApp"),
      ),
      body:Column(
        children: [
          Text("This is first flutter web page"),
          stfWidget(),
          Text("Test")
        ],
      )
      
    ),
  );
  }
}