import 'package:commercial/screens/complete_page/complete_page_screen.dart';
import 'package:commercial/screens/forgot_password/forgot_password_screen.dart';
import 'package:commercial/screens/login_success/login_success_screen.dart';
import 'package:commercial/screens/otp/otp_screen.dart';
import 'package:commercial/screens/sign_in/sign_in_screen.dart';
import 'package:commercial/screens/sign_up/sign_up_register_screen.dart';
import 'package:commercial/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  SignUpRegisterScreen.routeName: (context) => const SignUpRegisterScreen(),
  CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
  OtpScreen.routeName: (context) => const OtpScreen(),
};
