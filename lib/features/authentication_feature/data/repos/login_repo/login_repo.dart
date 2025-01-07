import 'package:flutter/material.dart';

abstract class LoginRepo {
  void loginRepo({
    required String email,
    required String password,
    required BuildContext context,
  });
}
