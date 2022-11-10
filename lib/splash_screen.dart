import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  final url = "https://assets7.lottiefiles.com/packages/lf20_itjl9rou.json";
  late final AnimationController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.network(
          url,
          controller: _controller,
          onLoaded: onLoaded,
        ),
      ),
    );
  }

  void onLoaded(composition) {
    _controller
      ..duration = composition.duration
      ..forward().then((value) {
        Navigator.pushReplacementNamed(context, "/signInPage");
      });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }
}
