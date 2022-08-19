import 'package:flutter/material.dart';
import 'package:lab2_form/pages/signup.dart';

void main() {
  //Passing the MycustomWidget class to the runApp method
  //This is the starting point of the application
  //The runApp method is a Flutter method that is used to start the application
  //The runApp method will take the MycustomWidget class as an argument and will run the application
  runApp(const LoginForm());
}

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lab 02 Assignment',
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.blueGrey,
        inputDecorationTheme: const InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 3, color: Colors.blueGrey),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 3, color: Colors.blueGrey),
          ),
        ),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text("Login Page 19SW20")),
          backgroundColor: Colors.blueGrey,
        ),
        body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 30),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter your name",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 30),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Your Email Address",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 30),
                TextFormField(
                  decoration: const InputDecoration(
                    hintText: "New Password",
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
