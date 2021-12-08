import 'package:chit_chat/screens/sign_in_screen.dart';
import 'package:chit_chat/screens/sign_up_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: "Poppins",
        primaryColor: const Color(0xffed4c58),
        backgroundColor: const Color(0xfff3f4f8),
      ),
      home: const SignInScreen(),
    );
  }
}