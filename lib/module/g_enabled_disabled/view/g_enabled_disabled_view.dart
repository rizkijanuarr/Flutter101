import 'package:flutter/material.dart';
import 'package:flutter101/core.dart';
import '../controller/g_enabled_disabled_controller.dart';

class GEnabledDisabledView extends StatefulWidget {
  const GEnabledDisabledView({Key? key}) : super(key: key);

  Widget build(context, GEnabledDisabledController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("GEnabledDisabled"),
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
  State<GEnabledDisabledView> createState() => GEnabledDisabledController();
}
