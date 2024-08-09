import 'package:flutter/material.dart';
import 'package:flutter101/core.dart';
import '../controller/k_theme_changer_controller.dart';

class KThemeChangerView extends StatefulWidget {
  const KThemeChangerView({super.key});

  Widget build(context, KThemeChangerController controller) {
    controller.view = this;
    return Theme(
      data: controller.theme, //
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Theme Changer"),
          actions: const [],
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () => controller.switchToDark(),
                  child: const Text("Dark"),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                  ),
                  onPressed: () => controller.switchToLight(),
                  child: const Text("Light"),
                ),
                const Divider(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  State<KThemeChangerView> createState() => KThemeChangerController();
}
