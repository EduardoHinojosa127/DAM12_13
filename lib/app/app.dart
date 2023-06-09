import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:laboratorio02/app/view/splash.dart';
import 'package:laboratorio02/main.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const primary = Color(0xFF40B7AD);
    const textColor = Color(0xFF4A4A4A);
    const BackgroundColor = Color(0xFFF5F5F5);
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: primary),
          scaffoldBackgroundColor: BackgroundColor,
          textTheme: Theme.of(context).textTheme.apply(
                fontFamily: 'Poppins',
                bodyColor: textColor,
                displayColor: textColor,
              ),
          useMaterial3: true,
        ),
        home: SplashPage());
  }
}
