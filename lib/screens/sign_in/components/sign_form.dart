import 'package:commercial/components/default_button.dart';
import 'package:commercial/components/form_error.dart';
import 'package:commercial/constants.dart';
import 'package:commercial/screens/forgot_password/forgot_password_screen.dart';
import 'package:commercial/screens/sign_in/components/custom_suffix_icon.dart';
import 'package:commercial/size_config.dart';
import 'package:flutter/material.dart';

class SignForm extends StatefulWidget {
  const SignForm({super.key});

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  late String email;
  late String password;
  final List<String> errors = [];
  bool remember = false;
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(18),
          child: Column(
            children: [
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                onSaved: (newValue) => email = newValue!,
                onChanged: (value) {
                  if (value.isNotEmpty && errors.contains(kEmailNullError)) {
                    setState(() {
                      errors.remove(kEmailNullError);
                    });
                  } else if (emailValidatorRegExp.hasMatch(value) &&
                      errors.contains(kInvalidEmailError)) {
                    setState(() {
                      errors.remove(kInvalidEmailError);
                    });
                  }
                  //return null;
                },
                validator: (value) {
                  if (value!.isEmpty && !errors.contains(kEmailNullError)) {
                    setState(() {
                      errors.add(kEmailNullError);
                    });
                  } else if (!emailValidatorRegExp.hasMatch(value) &&
                      !errors.contains(kInvalidEmailError)) {
                    setState(() {
                      errors.add(kInvalidEmailError);
                    });
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: "Email",
                  hintText: "Enter your email",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: customSuffixIcon(
                    icon: Icons.email_outlined,
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              TextFormField(
                obscureText: true,
                onSaved: (newValue) => password = newValue!,
                onChanged: (value) {
                  if (value.isNotEmpty && errors.contains(kPassNullError)) {
                    setState(() {
                      errors.remove(kPassNullError);
                    });
                  } else if (value.length >= 8 &&
                      errors.contains(kShortPassError)) {
                    setState(() {
                      errors.remove(kShortPassError);
                    });
                  }
                  //return null;
                },
                validator: (value) {
                  if (value!.isEmpty && !errors.contains(kPassNullError)) {
                    setState(() {
                      errors.add(kPassNullError);
                    });
                  } else if (value.length < 8 &&
                      !errors.contains(kPassNullError)) {
                    setState(() {
                      errors.add(kShortPassError);
                    });
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: "Password",
                  hintText: "Enter your password",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: customSuffixIcon(
                    icon: Icons.lock_outline,
                  ),
                ),
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              SizedBox(
                height: getProportionateScreenHeight(30),
              ),
              Row(
                children: [
                  Checkbox(
                    value: remember,
                    activeColor: kPrimaryColor,
                    onChanged: (value) {
                      setState(() {
                        remember = value!;
                      });
                    },
                  ),
                  const Text("Remember me"),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(
                          context, ForgotPasswordScreen.routeName);
                    },
                    child: const Text(
                      "Forgot Password",
                      style: TextStyle(decoration: TextDecoration.underline),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              FormError(errors: errors),
              SizedBox(
                height: getProportionateScreenHeight(20),
              ),
              DefaultButton(
                text: "Continue",
                press: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState?.save();
                  }
                },
              ),
            ],
          ),
        ));
  }
}
