import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:furniture_app/home/view/pages/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Furniture App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        fontFamily: 'Inter',
        useMaterial3: true,
      ),
      home: const HomeScreen()
    );
  }
}

