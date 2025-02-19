import 'package:ai_chatbot_ai/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

import '../sign_up_view.dart';
import 'other_action.dart';
import 'custom_approving_privacy_policy.dart';
import 'other_login_method.dart';

class OtherActionsSectionLoginForm extends StatelessWidget {
  const OtherActionsSectionLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const OtherAuthenticationMethods(),
        const SizedBox(
          height: 12,
        ),
        const CustomApprovingPrivacyPolicy(),
        const SizedBox(
          height: 8,
        ),
        OtherAction(
          text1: AppStrings.dontHaveAccount,
          text2: AppStrings.signUp,
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const SignUpView();
                },
              ),
            );
          },
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
