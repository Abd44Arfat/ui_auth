import 'package:flutter/material.dart';
import 'package:ui_auth/pages/login.dart';
import 'package:ui_auth/pages/signup.dart';
import 'package:ui_auth/pages/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
  debugShowCheckedModeBanner: false,
  initialRoute: "/",
routes: {
"/" :(context)=>const Welcome(),
"/login" :(context)=>const Login(),
"/signup" :(context)=>const Signup(),



},



    );
  }
}
