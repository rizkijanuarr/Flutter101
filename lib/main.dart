import 'package:flutter/material.dart';
import 'package:flutter101/core.dart';
import 'package:get/get.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // SETUP WINDOWS
  await windowManager.ensureInitialized();
  await windowManager.setSize(const Size(360.0, 440.0));
  // Always Top
  windowManager.setAlwaysOnTop(true);

  runApp(
    const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardView(),
    ),
  );
}
