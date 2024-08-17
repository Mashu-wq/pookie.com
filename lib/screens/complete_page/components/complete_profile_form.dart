import 'package:commercial/components/default_button.dart';
import 'package:commercial/components/form_error.dart';
import 'package:commercial/constants.dart';
import 'package:commercial/screens/sign_in/components/custom_suffix_icon.dart';
import 'package:commercial/size_config.dart';
import 'package:flutter/material.dart';

class CompleteProfileFrom extends StatefulWidget {
  const CompleteProfileFrom({super.key});

  @override
  State<CompleteProfileFrom> createState() => _CompleteProfileFromState();
}

class _CompleteProfileFromState extends State<CompleteProfileFrom> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  late String firstName;
  late String lastName;
  late String phoneNumber;
  late String address;

  void addError(String error) {
    if (!errors.contains(error)) {
      setState(() {
        errors.add(error);
      });
    }
  }

  void removeError(String error) {
    if (errors.contains(error)) {
      setState(() {
        errors.remove(error);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            TextFormField(
              onSaved: (newValue) => firstName = newValue!,
              onChanged: (value) {
                if (value.isNotEmpty) {
                  removeError(kNameNullError);
                }
                //return null;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  addError(kNameNullError);
                  return "";
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: "First Name",
                hintText: "Enter your first name",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: customSuffixIcon(
                  icon: Icons.person_outline,
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            TextFormField(
              onSaved: (newValue) => lastName = newValue!,
              onChanged: (value) {
                if (value.isNotEmpty) {
                  removeError(kNameNullError);
                }
                //return null;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  addError(kNameNullError);
                  return "";
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: "Last Name",
                hintText: "Enter your last name",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: customSuffixIcon(
                  icon: Icons.person_outline,
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              onSaved: (newValue) => phoneNumber = newValue!,
              onChanged: (value) {
                if (value.isNotEmpty) {
                  removeError(kPhoneNumberError);
                }
                //return null;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  addError(kPhoneNumberError);
                  return "";
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: "Phone Number",
                hintText: "Enter your Phone Number",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: customSuffixIcon(
                  icon: Icons.phone,
                ),
              ),
            ),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            TextFormField(
              onSaved: (newValue) => address = newValue!,
              onChanged: (value) {
                if (value.isNotEmpty) {
                  removeError(kAddressNullError);
                }
                //return null;
              },
              validator: (value) {
                if (value!.isEmpty) {
                  addError(kAddressNullError);
                  return "";
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: "Address",
                hintText: "Enter your Address",
                floatingLabelBehavior: FloatingLabelBehavior.always,
                suffixIcon: customSuffixIcon(
                  icon: Icons.place,
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
                  //go to OTP screen
                }
              },
            ),
          ],
        ));
  }
}
