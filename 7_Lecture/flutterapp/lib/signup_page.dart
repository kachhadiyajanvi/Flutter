import 'package:flutter/material.dart';
import 'package:flutterapp/app_scaffold.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  // Gender selection
  String? _gender = 'Male';  // Default value

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: Padding(
        padding: EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FlutterLogo(size: 100),
              SizedBox(height: 40),
              Text(
                "Create an Account",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.indigo[900],
                ),
              ),
              SizedBox(height: 20),

              // Email TextField
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Email",
                  hintText: "Enter your email",
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(height: 20),

              // Password TextField
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                  hintText: "Enter your password",
                ),
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 20),

              // Remark TextField
              TextFormField(
                maxLines: 4,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Remark",
                  hintText: "Any remarks or additional info",
                ),
                keyboardType: TextInputType.text,
              ),
              SizedBox(height: 20),
              // Gender Radio buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Gender: ", style: TextStyle(fontSize: 16)),
                  SizedBox(width: 10),
                  Row(
                    children: [
                      Radio<String>(
                        value: 'Male',
                        groupValue: _gender,
                        onChanged: (value) {
                          setState(() {
                            _gender = value;
                          });
                        },
                      ),
                      Text("Male"),
                      SizedBox(width: 20),
                      Radio<String>(
                        value: 'Female',
                        groupValue: _gender,
                        onChanged: (value) {
                          setState(() {
                            _gender = value;
                          });
                        },
                      ),
                      Text("Female"),
                      SizedBox(width: 20),
                      Radio<String>(
                        value: 'Other',
                        groupValue: _gender,
                        onChanged: (value) {
                          setState(() {
                            _gender = value;
                          });
                        },
                      ),
                      Text("Other"),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 30),

              // Sign Up Button
              ElevatedButton(
                onPressed: () {
                  // Handle sign up logic here
                },
                child: Text("Sign Up"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.indigo,
                  onPrimary: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Already have an account? Login Link
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?", style: TextStyle(color: Colors.black54)),
                  SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);  // Go back to Login screen
                    },
                    child: Text(
                      "Login",
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
