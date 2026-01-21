import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class MainWidget extends StatelessWidget {
  const MainWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("ksdlhf;aeg;oiwf;o ewfiorfg8ouwefijh iefefguiweheslfjwioh sefhopiwehfrh djglksdjhgkshdgkhdkgh;dskh dsihgo;ishegioh",
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
        style: TextStyle(shadows: [Shadow(
        color: Colors.black,      // Choose the color of the shadow
        blurRadius: 2.0,          // Adjust the blur radius for the shadow effect
        offset: Offset(2.0, 2.0))])
        ),
        ElevatedButton(onPressed: (){}, child: Text('Button')),
        OutlinedButton(onPressed: (){}, child: Text('Button')),
        TextButton(onPressed: (){}, child: Text('Button')),
        CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage("https://t4.ftcdn.net/jpg/08/04/36/29/360_F_804362990_0n7bGLz9clMBi5ajG52k8OAUQTneMbj4.jpg"),
        )
      ],
    );
  }
}