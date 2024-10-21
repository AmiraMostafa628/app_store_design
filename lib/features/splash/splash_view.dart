import 'package:app_store_task/core/utlis/constants_manager.dart';
import 'package:app_store_task/features/splash/widgets/splash_view_body.dart';
import 'package:flutter/material.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kWhiteColor,
      body: SplashViewBody(),
    );
  }
}
