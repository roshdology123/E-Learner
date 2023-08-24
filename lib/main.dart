import 'package:e_learning/screens/sign_up_details_screen/sign_up_details_screen.dart';
import 'package:e_learning/screens/sign_in_page/sign_in_screen.dart';
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
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky, overlays: [
      SystemUiOverlay.top
    ] );
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-Learner',
      theme: ThemeData(
        fontFamily: 'DMSans',
      ),
      home: const SignInScreen(),
    );
  }
}
