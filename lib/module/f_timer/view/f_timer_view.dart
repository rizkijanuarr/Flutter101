import 'package:flutter/material.dart';
import 'package:flutter101/core.dart';
import '../controller/f_timer_controller.dart';

class FTimerView extends StatefulWidget {
  const FTimerView({super.key});

  Widget build(context, FTimerController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Timer"),
        actions: const [],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                //
                Text(
                  "${controller.time}",
                  style: const TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                //
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<FTimerView> createState() => FTimerController();
}
