import 'package:flutter/material.dart';
import '../controller/d_cart_controller.dart';
import 'package:flutter101/core.dart';
import 'package:get/get.dart';

class DCartView extends StatelessWidget {
  const DCartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DCartController>(
      init: DCartController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("DCart"),
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
