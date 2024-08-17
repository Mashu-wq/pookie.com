import 'package:commercial/constants.dart';
import 'package:commercial/routes.dart';
import 'package:commercial/screens/splash/splash_screen.dart';
import 'package:commercial/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pookie.com',
      theme: theme(),

      // home: const SplashScreen(),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
