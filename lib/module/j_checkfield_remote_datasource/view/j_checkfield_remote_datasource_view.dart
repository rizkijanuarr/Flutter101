import 'package:flutter/material.dart';
import '../controller/j_checkfield_remote_datasource_controller.dart';
import 'package:flutter101/core.dart';
import 'package:get/get.dart';

class JCheckfieldRemoteDatasourceView extends StatelessWidget {
  const JCheckfieldRemoteDatasourceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<JCheckfieldRemoteDatasourceController>(
      init: JCheckfieldRemoteDatasourceController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("JCheckfieldRemoteDatasource"),
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
