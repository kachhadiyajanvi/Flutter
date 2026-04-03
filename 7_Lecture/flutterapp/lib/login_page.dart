import 'package:flutter/material.dart';
import 'package:flutterapp/app_scaffold.dart';
import 'package:flutterapp/signup_page.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: Padding(
        padding: EdgeInsets.all(30),  // Reduced padding for better space management
        child: SingleChildScrollView(  // Added SingleChildScrollView to avoid overflow on smaller screens
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FlutterLogo(size: 100),
              SizedBox(height: 40),  // Added spacing between logo and fields
              Text(
                "Welcome Back",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo[900],  // Darker shade for the title
                ),
              ),
              SizedBox(height: 20),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email",
                  hintText: "Enter your email",
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 20),  // Spacing between text fields
              TextFormField(
                obscureText: true,  // To hide password text
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                  hintText: "Enter your password",
                ),
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 20),  // Spacing between fields and button
              ElevatedButton(
                onPressed: () {}, 
                child: Text("Login"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.indigo,  // Button color
                  onPrimary: Colors.white,  // Button text color
                  padding: EdgeInsets.symmetric(vertical: 15),  // Increased padding
                  minimumSize: Size(double.infinity, 50),  // Full width button
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),  // Rounded button corners
                  ),
                ),
              ),
              SizedBox(height: 20),  // Spacing below the login button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?", style: TextStyle(color: Colors.black54)),
                  SizedBox(width: 10),
                  // GestureDetector(
                  //   onTap: () {
                  //     Navigator.push(
                  //       context, 
                  //       MaterialPageRoute(builder: (_) => SignUp()),
                  //     );
                  //   },
                  //   child: Text(
                  //     "Sign up",
                  //     style: TextStyle(
                  //       color: Colors.indigo,
                  //       fontWeight: FontWeight.bold,
                  //     ),
                  //   ),
                  // ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (_) => SignUp()),
                      );
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.indigo,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
