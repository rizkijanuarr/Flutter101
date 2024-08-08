import 'package:flutter/material.dart';
import 'package:flutter101/core.dart';
import '../controller/e_animation_controller.dart';

class EAnimationView extends StatefulWidget {
  const EAnimationView({super.key});

  Widget build(context, EAnimationController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("EAnimation"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: const Column(
            children: [],
          ),
        ),
      ),
    );
  }

  @override
  State<EAnimationView> createState() => EAnimationController();
}
