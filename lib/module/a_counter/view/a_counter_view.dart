import 'package:flutter/material.dart';
import 'package:flutter101/core.dart';
import '../controller/a_counter_controller.dart';

class ACounterView extends StatefulWidget {
  const ACounterView({super.key});

  Widget build(context, ACounterController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Counter"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                // IMPLEMENTATION FROM CONTROLLER!
                "${controller.tambah}",
                style: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                // IMPLEMENTATION FROM CONTROLLER!
                onPressed: () => controller.tambahCounter(),
                child: const Text("+"),
              ),
              const SizedBox(
                height: 5.0,
              ),
              const Divider(),
              const SizedBox(
                height: 5.0,
              ),
              Text(
                // IMPLEMENTATION FROM CONTROLLER!
                "${controller.kurang}",
                style: const TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                ),
                // IMPLEMENTATION FROM CONTROLLER!
                onPressed: () => controller.kurangCounter(),
                child: const Text("-"),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<ACounterView> createState() => ACounterController();
}
