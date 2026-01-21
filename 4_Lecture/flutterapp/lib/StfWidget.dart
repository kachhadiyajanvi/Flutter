import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class stfWidget extends StatefulWidget {
  const stfWidget({super.key});

  @override
  State<stfWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<stfWidget> {
  @override
  Widget build(BuildContext context) {
    return Text("StateFull widget");
  }
}