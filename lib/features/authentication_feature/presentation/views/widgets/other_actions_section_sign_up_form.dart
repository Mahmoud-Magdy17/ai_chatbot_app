import 'package:ai_chatbot_ai/core/utils/app_strings.dart';
import 'package:ai_chatbot_ai/features/authentication_feature/presentation/views/login_view.dart';
import 'package:flutter/material.dart';

import 'other_action.dart';
import 'custom_approving_privacy_policy.dart';
import 'other_login_method.dart';

class OtherActionsSectionSignUpForm extends StatelessWidget {
  const OtherActionsSectionSignUpForm({
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
          text1: AppStrings.alreadyRegisterd,
          text2: AppStrings.login,
          onTap: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const LoginView();
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
