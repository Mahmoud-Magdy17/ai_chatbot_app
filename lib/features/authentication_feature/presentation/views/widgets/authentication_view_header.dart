import 'package:flutter/material.dart';

class AuthenticationViewHeader extends StatelessWidget {
  const AuthenticationViewHeader({
    super.key,
    required this.image,
  });
  final String image;
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
            image
          ),
        ),
      ),
    ]);
  }
}
