import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Import the intl package

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  _MessageScreenState createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  DateTime? myDate = DateTime.now();
  TimeOfDay? mytime = TimeOfDay.now();
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Message"),
          SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            ),
            onPressed: () async {
              DateTime? pickedDate = await showDatePicker(
                context: context,
                firstDate: DateTime(2000),
                lastDate: DateTime(2027),
                initialDate: DateTime.now(),
              );

              if (pickedDate != null) {
                setState(() {
                  myDate = pickedDate;
                });
              }
            },
            child: Text("Choose Date"),
          ),
          SizedBox(height: 30),
          if (myDate != null)
            Text(
              DateFormat('yyyy-MM-dd').format(myDate!), 
            ),
          SizedBox(height: 30),
          ElevatedButton(onPressed: ()async{
            TimeOfDay? pickedTime = await showTimePicker(
              context: context,
              initialTime: TimeOfDay.now(),
            );

            if (pickedTime != null) {
              setState(() {
                mytime = pickedTime;
              });
            }
          }, child: Text("choose Time")),
          SizedBox(height: 30),
          if (mytime != null)
            Text(mytime != null
                  ? mytime!.format(context)
                  : '',),
        ],
      ),
    );
  }
}