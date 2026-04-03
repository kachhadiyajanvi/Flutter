import 'package:flutter/material.dart';
import 'package:flutterapp/appScaffold.dart';

class ListviewDemo extends StatefulWidget {
  const ListviewDemo({super.key});

  @override
  State<ListviewDemo> createState() => _ListviewDemoState();
}

class _ListviewDemoState extends State<ListviewDemo> {
  List<String> names = ["AAA", "BBB", "CCC", "DDD"];
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child:Stack(
        children: [
          Positioned(top:0, right: -100, child: Container(
            width: 200,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.amber,
              shape: BoxShape.circle
            ),
          )),
          Align(alignment: Alignment.topCenter, child: Text("List View")),
          ListView.builder(itemCount: names.length, itemBuilder: (context, index){
            return ListTile(title: Text(names[index]),trailing: Icon(Icons.check),
            leading: CircleAvatar(backgroundColor: Colors.amber, child: Text(names[index].substring(0,1).toUpperCase()),),);
          },)
        ],
      )
    );
  }
}