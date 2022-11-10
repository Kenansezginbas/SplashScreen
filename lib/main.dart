import 'package:flutter/material.dart';
import 'package:splash_screen/auth/sign_in_page.dart';
import 'package:splash_screen/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(scaffoldBackgroundColor: Colors.black),
      title: 'Flutter Demo',
      routes: {
        "/signInPage": (context) => SignInPage(),
      },
      home: const SplashScreen(),
    );
  }
}
