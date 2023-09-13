import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Views/home_view.dart';


class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedSplashScreen(
        duration: 1200,
        splashIconSize: 250,
        splash: Image.asset('assets/logo/logo.png'),
        nextScreen: const HomeView(),
        splashTransition: SplashTransition.fadeTransition,
        backgroundColor: Colors.white,
        
      ),
    );
  }
}
