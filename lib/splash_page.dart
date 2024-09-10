import 'package:flutter/material.dart';
import 'package:task4/navigation_material_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    startSplashTimer(context);
    return  Image.asset('assets/images/Splash page.png', fit: BoxFit.fill);
  }
}

void startSplashTimer(BuildContext context) {
  Future.delayed(const Duration(seconds: 2), () {
    navigateToNextScreen(context);
  });
}

void navigateToNextScreen(BuildContext context) {
  replaceWithHome(context);
}
