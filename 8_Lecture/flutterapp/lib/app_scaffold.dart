import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class AppScaffold extends StatelessWidget {
  final Widget child;
  const AppScaffold({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo app"),
      ),
      body: child,
    );
  }
}