import 'package:flutter/material.dart';
import '../controller/i_dropdown_remote_datasource_controller.dart';
import 'package:flutter101/core.dart';
import 'package:get/get.dart';

class IDropdownRemoteDatasourceView extends StatelessWidget {
  const IDropdownRemoteDatasourceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<IDropdownRemoteDatasourceController>(
      init: IDropdownRemoteDatasourceController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("IDropdownRemoteDatasource"),
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
