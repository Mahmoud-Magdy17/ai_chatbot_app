import 'package:flutter/material.dart';

import 'input_section_login_form.dart';
import 'other_action_section_login_form.dart';

class LoginViewForm extends StatelessWidget {
  const LoginViewForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          InputSectionLoginForm(),
          OtherActionsSectionLoginForm(),
        ],
      ),
    );
  }
}
