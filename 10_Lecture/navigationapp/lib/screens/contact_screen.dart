import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  final String collagename, address;
  const ContactScreen({super.key, required this.collagename, required this.address});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contact"),
      ),
      body: Text("Contact US - $collagename and $address"),
    );
  }
}