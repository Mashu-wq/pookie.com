import 'package:commercial/size_config.dart';
import 'package:flutter/material.dart';

class FormError extends StatelessWidget {
  final List<String> errors;

  const FormError({
    super.key,
    required this.errors,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        errors.length,
        (index) => formErrorText(errors[index]),
      ),
    );
  }

  Row formErrorText(String error) {
    return Row(
      children: [
        const Icon(
          Icons.error,
          color: Colors.redAccent,
        ),
        SizedBox(
          width: getProportionateScreenWidth(10),
        ),
        Text(error),
      ],
    );
  }
}
