import 'package:flutter/material.dart';

import 'input_section_sign_up_form.dart';
import 'or_continue_with.dart';
import 'other_actions_section_sign_up_form.dart';

class SignUpViewForm extends StatelessWidget {
  const SignUpViewForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          InputSectionSignUpForm(),
          SizedBox(
            height: 60,
            child: OrContinueWith(),
          ),
          OtherActionsSectionSignUpForm(),
        ],
      ),
    );
  }
}
