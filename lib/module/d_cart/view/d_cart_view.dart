import 'package:flutter/material.dart';
import 'package:flutter101/core.dart';
import '../controller/d_cart_controller.dart';

class DCartView extends StatefulWidget {
  const DCartView({Key? key}) : super(key: key);

  Widget build(context, DCartController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("DCart"),
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
  State<DCartView> createState() => DCartController();
}
