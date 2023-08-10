import 'package:e_learning/screens/loading_screen/loading_screen.dart';
import 'package:e_learning/screens/splash_screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(
      SystemUiMode.manual,
      overlays: [
        SystemUiOverlay.top,
      ],
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Learner',
      theme: ThemeData(
        fontFamily: 'DMSans',

      ),
      home: const SplashScreen(),
    );
  }
}
