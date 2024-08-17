import 'package:commercial/screens/sign_up/components/register_body.dart';
import 'package:flutter/material.dart';

class SignUpRegisterScreen extends StatelessWidget {
  static String routeName = "/sign_up_register";
  const SignUpRegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Sign Up"),
        centerTitle: true,
      ),
      body: const RegisterBody(),
    );
  }
}
