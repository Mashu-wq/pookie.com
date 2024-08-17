import 'package:commercial/constants.dart';
import 'package:commercial/screens/forgot_password/components/forgot_pass_form.dart';
import 'package:commercial/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(10),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight! * 0.04),
              Text(
                "Forgot Password",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "Please enter your email and we will send \nyou a link to return to your account",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.1),
              const ForgotPassForm(),
              SizedBox(height: SizeConfig.screenHeight! * 0.1),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(16),
                    ),
                  ),
                  SizedBox(width: getProportionateScreenWidth(10)),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: getProportionateScreenWidth(16),
                      color: kPrimaryColor,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    ));
  }
}
