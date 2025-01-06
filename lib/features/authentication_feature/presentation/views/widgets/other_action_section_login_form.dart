import 'package:flutter/material.dart';

import 'already_have_account.dart';
import 'custom_approving_privacy_policy.dart';
import 'other_login_method.dart';

class OtherActionsSectionLoginForm extends StatelessWidget {
  const OtherActionsSectionLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        OtherLoginMethods(),
        SizedBox(
          height: 12,
        ),
        CustomApprovingPrivacyPolicy(),
        SizedBox(
          height: 8,
        ),
        AlreadyHaveAccount(),
        SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
