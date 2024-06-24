import 'package:flutter/material.dart';
import 'package:widget_app/config/router/router.dart';
import 'package:widget_app/config/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Widgets ',
      theme: AppTheme(selectedColor: 2).getThemeData(),
    );
  }
}


