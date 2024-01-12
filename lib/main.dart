import 'package:auth_screens/constants/colors.dart';
import 'package:auth_screens/screens/getstarted.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Authentication Screens',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.background,
        appBarTheme: const AppBarTheme(
            backgroundColor: AppColors.background, scrolledUnderElevation: 0),
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
            color: AppColors.color,
          ),
        ),
      ),
      home: const GetStartedScreen(),
    );
  }
}
