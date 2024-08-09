import 'package:flutter/material.dart';
import 'package:flutter101/core.dart';
import '../controller/g_enabled_disabled_controller.dart';

class GEnabledDisabledView extends StatefulWidget {
  const GEnabledDisabledView({super.key});

  Widget build(context, GEnabledDisabledController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Enabled Disabled"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              QTextField(
                label: "Email",
                validator: Validator.email,
                suffixIcon: Icons.tag,
                value: null,
                onChanged: (value) {
                  controller.email = value;
                  controller.checkFormValidation();
                },
              ),
              QTextField(
                label: "Password",
                obscure: true,
                validator: Validator.required,
                suffixIcon: Icons.password,
                value: null,
                onChanged: (value) {
                  controller.password = value;
                  controller.checkFormValidation();
                },
              ),
              const SizedBox(
                height: 5.0,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 42.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor:
                        controller.isValid ? Colors.green[900] : Colors.grey,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  onPressed: () => controller.doSave(),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color:
                          controller.isValid ? Colors.white : Colors.grey[400],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  State<GEnabledDisabledView> createState() => GEnabledDisabledController();
}
