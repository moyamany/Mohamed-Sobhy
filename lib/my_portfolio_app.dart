import 'package:flutter/material.dart';
import 'package:my_portfolio/core/theme/app_theme.dart';
import 'package:my_portfolio/feature/home/presentation/screens/home_screen.dart';

class MyPortfolioApp extends StatelessWidget {
  const MyPortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Mohamed Sobhy",
      theme: AppTheme.appTheme,
      home: HomeScreen(),
    );
  }
}
