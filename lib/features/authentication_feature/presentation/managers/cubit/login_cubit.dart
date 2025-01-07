import 'package:ai_chatbot_ai/features/authentication_feature/data/repos/login_repo/login_repo_impl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  void login(BuildContext context) {
    emit(LoginLoading());
    try {
      LoginRepoImpl().loginRepo(
        email: emailController.text,
        password: passwordController.text,
        context: context,
      );
      emit(LoginSuccess());
    } catch (e) {
      emit(LoginFailture(error: e.toString()));
    }
  }
}
