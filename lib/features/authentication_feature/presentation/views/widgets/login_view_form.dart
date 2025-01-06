import 'package:ai_chatbot_ai/features/authentication_feature/presentation/views/widgets/or_continue_with.dart';
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
          SizedBox(
            height: 60,
            child: OrContinueWith(),
          ),
          OtherActionsSectionLoginForm(),
        ],
      ),
    );
  }
}
