import 'package:flutter/material.dart';
import 'package:flutter101/core.dart';
import '../controller/i_dropdown_remote_datasource_controller.dart';

class IDropdownRemoteDatasourceView extends StatefulWidget {
  const IDropdownRemoteDatasourceView({super.key});

  Widget build(context, IDropdownRemoteDatasourceController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dropdown Remote Datasource"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      Text(
                        '${controller.users}',
                        style: const TextStyle(
                          fontSize: 12.0,
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      if (controller.users.isNotEmpty)
                        QDropdownField(
                          label: "Users",
                          validator: Validator.required,
                          items: controller.users,
                          onChanged: (value, label) {},
                        ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<IDropdownRemoteDatasourceView> createState() =>
      IDropdownRemoteDatasourceController();
}
