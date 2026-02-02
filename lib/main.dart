import 'package:coding_challenge_eigital/utils/app_theme.dart';
import 'package:coding_challenge_eigital/utils/maths_utils.dart';
import 'package:coding_challenge_eigital/view/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      themeMode: ThemeMode.light,
      home: const HomeScreen(),
      builder: (context, child) {
        Responsive.init(context);
        return child!;
      },
    );
  }
}
