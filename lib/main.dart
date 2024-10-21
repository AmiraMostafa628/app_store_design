import 'package:app_store_task/core/utlis/go_router.dart';
import 'package:app_store_task/core/utlis/theme_Manager.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: getAppTheme(),
    );
  }
}

