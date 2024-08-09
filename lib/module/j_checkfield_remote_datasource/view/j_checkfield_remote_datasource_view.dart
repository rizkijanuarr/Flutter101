import 'package:flutter/material.dart';
import 'package:flutter101/core.dart';
import '../controller/j_checkfield_remote_datasource_controller.dart';

class JCheckfieldRemoteDatasourceView extends StatefulWidget {
  const JCheckfieldRemoteDatasourceView({super.key});

  Widget build(context, JCheckfieldRemoteDatasourceController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkfield Remote Datasource"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Card(
                color: Colors.white,
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
                        Card(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: QCheckField(
                              label: "Users",
                              validator: Validator.required,
                              items: controller.users,
                              onChanged: (value, label) {},
                            ),
                          ),
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
  State<JCheckfieldRemoteDatasourceView> createState() =>
      JCheckfieldRemoteDatasourceController();
}
