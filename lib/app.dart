import 'package:eureka/utils/theme/theme_light.dart';
import 'package:eureka/view/splash/splash_view.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Eureka',
      theme: TThemeLight.lightTheme,
      home: const SplashView(),
    );
  }
}