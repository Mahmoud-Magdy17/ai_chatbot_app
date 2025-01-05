import 'package:flutter/material.dart';

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
        Expanded(
          flex: 3,
          child: Container(
            alignment: Alignment.center,
            child: const Text(
              'HELLO !',
              style: TextStyle(
                fontSize: 48,
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
