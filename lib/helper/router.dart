import 'package:dashboardtest/feature/splash/splash_screen.dart';
import 'package:flutter/material.dart';

const splash = '/';

MaterialPageRoute generateRotue(RouteSettings settings) {
  return MaterialPageRoute(
      settings: settings,
      builder: (context) {
        switch (settings.name) {
          case splash:
            return const SplashScreen();
          default:
            return const SplashScreen();
        }
      });
}
