import 'package:flutter/material.dart';

import 'authintication_wave_painter.dart';
import 'login_view_form.dart';
import 'login_view_header.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: AuthinticationWavePainter(scaler: 1),
      child: const Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 46),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: LoginViewHeader(),
              ),
              Expanded(
                flex: 8,
                child: LoginViewForm(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
