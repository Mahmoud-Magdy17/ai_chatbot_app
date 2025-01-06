import 'package:ai_chatbot_ai/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

class LoginViewHeader extends StatelessWidget {
  const LoginViewHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Spacer(
        flex: 2,
      ),
      Expanded(
        flex: 5,
        child: SizedBox(
          height: 135,
          child: Image.asset(
            fit: BoxFit.contain,
            AppAssets.botHead,
          ),
        ),
      ),
    ]);
  }
}
