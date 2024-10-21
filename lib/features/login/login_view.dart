import 'package:app_store_task/core/utlis/constants_manager.dart';
import 'package:app_store_task/features/login/widgets/login_view_body.dart';
import 'package:flutter/material.dart';


class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
        body: SafeArea(child: const LoginViewBody()));
  }
}
