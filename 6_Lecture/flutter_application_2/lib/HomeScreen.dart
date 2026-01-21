import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_2/MainWidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(appBar: AppBar(title: Text("Home", style: TextStyle(fontFamily: 'Gravita'),)),
      body: Column(children: [
        Image(image: AssetImage('assests/images/1.jpg'),
        fit: BoxFit.contain,
        ),
        MainWidget()
      ],),
      ),
    );
  }
}