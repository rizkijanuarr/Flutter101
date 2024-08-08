import 'package:flutter/material.dart';
import 'package:flutter101/core.dart';
import '../controller/l_navigation_controller.dart';

class LNavigationView extends StatefulWidget {
  const LNavigationView({Key? key}) : super(key: key);

  Widget build(context, LNavigationController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("LNavigation"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: const [],
          ),
        ),
      ),
    );
  }

  @override
  State<LNavigationView> createState() => LNavigationController();
}
