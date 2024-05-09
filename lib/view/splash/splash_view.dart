import 'package:eureka/controller/splash/splash_controller.dart';
import 'package:flutter/material.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  final splashController = SplashController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashController.isLogin(context);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         Center(
           child: Image.asset(
             height: 250,
             width: 250,
             "assets/images/logo.png",
           ),
         ),
        ],
      ),
    );
  }
}
