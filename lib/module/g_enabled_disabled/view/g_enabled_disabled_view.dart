import 'package:flutter/material.dart';
import '../controller/g_enabled_disabled_controller.dart';
import 'package:flutter101/core.dart';
import 'package:get/get.dart';

class GEnabledDisabledView extends StatelessWidget {
  const GEnabledDisabledView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<GEnabledDisabledController>(
      init: GEnabledDisabledController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("GEnabledDisabled"),
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
