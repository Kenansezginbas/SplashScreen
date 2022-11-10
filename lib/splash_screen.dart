import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final url = "https://assets7.lottiefiles.com/packages/lf20_itjl9rou.json";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashEnd();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LottieBuilder.network(url),
      ),
    );
  }

  splashEnd() {
    Future.delayed(Duration(seconds: 6)).then(
      (value) {
        Navigator.pushReplacementNamed(context, "/signInPage");
      },
    );
  }
}
