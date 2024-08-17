import 'package:commercial/components/default_button.dart';
import 'package:commercial/components/form_error.dart';
import 'package:commercial/constants.dart';
import 'package:commercial/screens/complete_page/complete_page_screen.dart';
import 'package:commercial/screens/sign_in/components/custom_suffix_icon.dart';
import 'package:commercial/size_config.dart';
import 'package:flutter/material.dart';

class RegisterFrom extends StatefulWidget {
  const RegisterFrom({super.key});

  @override
  State<RegisterFrom> createState() => _RegisterFromState();
}

class _RegisterFromState extends State<RegisterFrom> {
  @override
  Widget build(BuildContext context) {
    String? confirm_password;
    String email;
    final List<String> errors = [];
    String? password;
    final _formKey = GlobalKey<FormState>();

    return Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
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
                  password = value;
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
              TextFormField(
                obscureText: true,
                onSaved: (newValue) => confirm_password = newValue!,
                onChanged: (value) {
                  if (password == confirm_password) {
                    setState(() {
                      errors.remove(kMatchPassError);
                    });
                  }
                  //return null;
                },
                validator: (value) {
                  if (value!.isEmpty) {
                    // setState(() {
                    //   errors.add(kPassNullError);
                    // });
                    // return "";
                  } else if (password != confirm_password) {
                    setState(() {
                      errors.add(kMatchPassError);
                    });
                    // return "";
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  labelText: "Confirm Password",
                  hintText: "Re-enter your password",
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  suffixIcon: customSuffixIcon(
                    icon: Icons.lock_outline,
                  ),
                ),
              ),
              FormError(errors: errors),
              SizedBox(
                height: getProportionateScreenHeight(40),
              ),
              DefaultButton(
                text: "Continue",
                press: () {
                  if (_formKey.currentState!.validate()) {
                    //go to complete profile page
                    Navigator.pushNamed(
                        context, CompleteProfileScreen.routeName);
                  }
                },
              ),
            ],
          ),
        ));
  }
}
