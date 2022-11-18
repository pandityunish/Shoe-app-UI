import 'package:flutter/material.dart';
import 'package:shoesapp/common/colors.dart';
import 'package:shoesapp/features/screens/loginpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Loginpage(),
      theme: ThemeData(scaffoldBackgroundColor: primarycolor),
    );
  }
}
