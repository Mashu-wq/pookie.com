import 'package:commercial/components/default_button.dart';
import 'package:commercial/components/form_error.dart';
import 'package:commercial/constants.dart';
import 'package:commercial/screens/sign_in/components/custom_suffix_icon.dart';
import 'package:commercial/size_config.dart';
import 'package:flutter/material.dart';

class ForgotPassForm extends StatefulWidget {
  //final _formKey = GlobalKey<FormState>();

  const ForgotPassForm({
    super.key,
  });

  @override
  State<ForgotPassForm> createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  late String email;
  final List<String> errors = [];
  final _formKey = GlobalKey<FormState>();
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
              height: getProportionateScreenHeight(30),
            ),
            FormError(errors: errors),
            SizedBox(height: SizeConfig.screenHeight! * 0.1),
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
      ),
    );
  }
}
