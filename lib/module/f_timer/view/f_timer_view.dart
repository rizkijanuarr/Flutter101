import 'package:flutter/material.dart';
import 'package:flutter101/core.dart';
import '../controller/f_timer_controller.dart';

class FTimerView extends StatefulWidget {
  const FTimerView({Key? key}) : super(key: key);

  Widget build(context, FTimerController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("FTimer"),
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
  State<FTimerView> createState() => FTimerController();
}
