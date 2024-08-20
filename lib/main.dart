import 'package:flutter101/state_util.dart';
import 'package:flutter101/core.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
}

runMainApp() async {
  return runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'rizkijanuarr',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      navigatorKey: Get.navigatorKey,
      debugShowCheckedModeBanner: false,
      home: const DashboardView(),
    );
  }
}
