import 'package:commercial/components/social_card.dart';
import 'package:commercial/screens/sign_up/components/register_form.dart';
import 'package:commercial/size_config.dart';
import 'package:flutter/material.dart';

class RegisterBody extends StatefulWidget {
  const RegisterBody({super.key});

  @override
  State<RegisterBody> createState() => _RegisterBodyState();
}

class _RegisterBodyState extends State<RegisterBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(height: SizeConfig.screenHeight! * 0.04),
            Text(
              "Register Account",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              "Complete your details or continue \nwith social media",
              textAlign: TextAlign.center,
            ),
            SizedBox(height: SizeConfig.screenHeight! * 0.08),
            const RegisterFrom(),
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
            const Text(
              "By continuing you agree to our \nTerms and Conditions",
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
