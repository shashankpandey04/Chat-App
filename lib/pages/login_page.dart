import 'package:app/components/my_text_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Icon(
                    Icons.message,
                    size: 80,
                    color: Colors.grey[800],
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    "Welcome Back!",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  MyTextField(
                      controller: emailController,
                      hintText: "Email",
                      ObscureText: false),
                  const SizedBox(
                    height: 50,
                  ),
                  MyTextField(
                      controller: passwordController,
                      hintText: "Password",
                      ObscureText: true),
                  const SizedBox(
                    height: 50,
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
