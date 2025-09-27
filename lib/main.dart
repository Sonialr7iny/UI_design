import 'package:flutter/material.dart';
import 'package:ui_design/features/presentations/screens/details.dart';
import 'package:ui_design/features/presentations/screens/home.dart';
import 'package:ui_design/features/presentations/screens/upgrade_plan.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:Home() ,
    );
  }
}
