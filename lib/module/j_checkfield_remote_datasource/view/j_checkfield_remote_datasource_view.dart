import 'package:flutter/material.dart';
import 'package:flutter101/core.dart';
import '../controller/j_checkfield_remote_datasource_controller.dart';

class JCheckfieldRemoteDatasourceView extends StatefulWidget {
  const JCheckfieldRemoteDatasourceView({Key? key}) : super(key: key);

  Widget build(context, JCheckfieldRemoteDatasourceController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("JCheckfieldRemoteDatasource"),
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
  State<JCheckfieldRemoteDatasourceView> createState() =>
      JCheckfieldRemoteDatasourceController();
}
