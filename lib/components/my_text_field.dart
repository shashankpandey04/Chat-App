import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool ObscureText;
  const MyTextField(
      {super.key,
      required this.controller,
      required this.hintText,
      required this.ObscureText});

  @override
  Widget build(BuildContext context) {
    return TextField(
        controller: controller,
        obscureText: ObscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey.shade200,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          fillColor: Colors.grey[400],
          filled: true,
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Colors.white,
          ),
        ));
  }
}
