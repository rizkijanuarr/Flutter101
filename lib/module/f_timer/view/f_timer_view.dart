import 'package:flutter/material.dart';
import '../controller/f_timer_controller.dart';
import 'package:flutter101/core.dart';
import 'package:get/get.dart';

class FTimerView extends StatelessWidget {
  const FTimerView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<FTimerController>(
      init: FTimerController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("FTimer"),
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
