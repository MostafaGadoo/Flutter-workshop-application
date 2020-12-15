import 'package:courses/modules/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'modules/forget_password/forget_password.dart';
import 'modules/signup/signup_screen.dart';
import 'modules/welcome/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Courses',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SignUpScreen(),
    );
  }
}
