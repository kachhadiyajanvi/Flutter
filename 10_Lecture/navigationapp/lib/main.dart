import 'package:flutter/material.dart';
import 'package:navigationapp/screens/contact_screen.dart';
import 'package:navigationapp/screens/home_screen.dart';
import 'package:navigationapp/screens/profile_screen.dart';
import 'package:navigationapp/screens/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: {
        "/":(context) => StartScreen(),
        "/home":(context) => HomeScreen(),
        // "/profile":(context) => ProfileScreen(),
        // "/contact":(context) => ContactScreen(),
      },
      onGenerateRoute: (settings) {
        switch(settings.name){
          case '/profile':{
            return MaterialPageRoute(builder: (builder) => ProfileScreen(name: settings.arguments as String));
          }
          case '/contact':{
            Map<String,dynamic> myarg = settings.arguments as Map<String,dynamic>;
            return MaterialPageRoute(builder: (builder) => ContactScreen(collagename: myarg["collagename"], address: myarg["address"]));
          }
        }
      },
      onUnknownRoute: (settings) => MaterialPageRoute(builder: (builder)=> Center(
        child: Text("404 Page Not Found"),
      )),
    );
  }
}