import 'package:commercial/screens/complete_page/components/complete_profile_form.dart';

import 'package:commercial/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight! * 0.04),
              Text(
                "Complete Profile",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "Complete your details or continue with social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight! * 0.08),
              const CompleteProfileFrom(),
              //SizedBox(height: SizeConfig.screenHeight! * 0.08),
            ],
          ),
        ),
      ),
    ));
  }
}
