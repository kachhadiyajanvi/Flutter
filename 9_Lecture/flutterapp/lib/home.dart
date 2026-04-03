import 'package:flutter/material.dart';
import 'package:flutterapp/appScaffold.dart';
import 'package:flutterapp/listViewDemo.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child:Column(
        children: [
          Text("Home Page"),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (builder){
              return ListviewDemo();
            }));
          },
          child: Text("View List")),
          TextButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (builder){
              return AppScaffold(child: Text("This is about us page"));
            }));
          }, child: Text("About Us"))
        ],
      )
    );
  }
}