import 'package:commercial/size_config.dart';
import 'package:flutter/material.dart';

class customSuffixIcon extends StatelessWidget {
  final IconData icon;
  const customSuffixIcon({
    super.key,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        getProportionateScreenWidth(20),
        getProportionateScreenWidth(20),
        getProportionateScreenWidth(20),
      ),
      child: Icon(
        icon,
      ),
    );
  }
}
