import 'package:chabhi/screens/splashscreen/splash_screen.dart';
import 'package:flutter/material.dart';

class MyRoutes {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case "/":
        return MaterialPageRoute(builder: (context) => SplashScreen());

      case "/login":
        return MaterialPageRoute(builder: (context) => SplashScreen());

      case "/signup":
        return MaterialPageRoute(builder: (context) => SplashScreen());

      case "/home":
        return MaterialPageRoute(builder: (context) => SplashScreen());
    }
  }
}
