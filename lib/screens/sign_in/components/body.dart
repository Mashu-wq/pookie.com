// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:commercial/components/social_card.dart';
import 'package:commercial/constants.dart';
import 'package:commercial/screens/sign_in/components/sign_form.dart';
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
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight! * 0.04),
              Text(
                "Welcome Back",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "Sign in with your email and password \nor continue with social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.08),
              const SignForm(),
              SizedBox(height: SizeConfig.screenHeight! * 0.08),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SocialCard(icon: Icons.facebook, press: () {}),
                  // SocialCard(icon: Icons.google, press: () {}),
                  // SocialCard(icon: Icons.twitter, press: () {})
                ],
              ),
              SizedBox(height: getProportionateScreenHeight(20)),
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
