import 'package:flutter/material.dart';
import 'package:flutter101/core.dart';
import '../controller/i_dropdown_remote_datasource_controller.dart';

class IDropdownRemoteDatasourceView extends StatefulWidget {
  const IDropdownRemoteDatasourceView({Key? key}) : super(key: key);

  Widget build(context, IDropdownRemoteDatasourceController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("IDropdownRemoteDatasource"),
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
  State<IDropdownRemoteDatasourceView> createState() =>
      IDropdownRemoteDatasourceController();
}
