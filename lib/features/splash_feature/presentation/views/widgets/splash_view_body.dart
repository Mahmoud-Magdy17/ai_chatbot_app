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
          child: Image.asset('assets/images/chat.png'),
        ),
        const Expanded(
          flex: 3,
          child: HelloText(),
        ),
      ],
    );
  }
}
