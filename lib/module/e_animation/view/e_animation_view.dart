import 'package:flutter/material.dart';
import '../controller/e_animation_controller.dart';
import 'package:flutter101/core.dart';
import 'package:get/get.dart';

class EAnimationView extends StatelessWidget {
  const EAnimationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<EAnimationController>(
      init: EAnimationController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("EAnimation"),
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
      },
    );
  }
}
