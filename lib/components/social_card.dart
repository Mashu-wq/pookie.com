import 'package:commercial/size_config.dart';
import 'package:flutter/material.dart';

class SocialCard extends StatelessWidget {
  final IconData icon;
  final Function press;
  const SocialCard({super.key, required this.icon, required this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press(),
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(10),
        ),
        padding: EdgeInsets.all(getProportionateScreenWidth(12)),
        height: getProportionateScreenHeight(40),
        width: getProportionateScreenWidth(40),
        decoration: const BoxDecoration(
          color: Color(0xFFF5F6F9),
          shape: BoxShape.circle,
        ),
        child: Icon(icon),
      ),
    );
  }
}
