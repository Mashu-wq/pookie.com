import 'package:commercial/constants.dart';
import 'package:commercial/size_config.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final VoidCallback
      press; // Use VoidCallback instead of Function for type safety
  const DefaultButton({
    super.key,
    required this.text,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: ElevatedButton(
        onPressed: press,
        style: ElevatedButton.styleFrom(
          backgroundColor: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                18), // Optional: Add border radius if needed
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
              fontSize: getProportionateScreenWidth(18), color: Colors.white),
        ),
      ),
    );
  }
}
