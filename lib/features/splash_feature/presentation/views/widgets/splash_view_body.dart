import 'package:ai_chatbot_ai/core/utils/app_assets.dart';
import 'package:flutter/material.dart';

import 'hello_text.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          flex: 6,
          child: Image.asset(AppAssets.bot1),
        ),
        const Expanded(
          flex: 3,
          child: HelloText(),
        ),
      ],
    );
  }
}
