import 'package:commercial/screens/forgot_password/forgot_password_screen.dart';
import 'package:commercial/screens/sign_in/sign_in_screen.dart';
import 'package:commercial/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen()
};
