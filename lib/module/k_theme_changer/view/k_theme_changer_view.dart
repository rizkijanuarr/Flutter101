import 'package:flutter/material.dart';
import 'package:flutter101/core.dart';
import '../controller/k_theme_changer_controller.dart';

class KThemeChangerView extends StatefulWidget {
  const KThemeChangerView({Key? key}) : super(key: key);

  Widget build(context, KThemeChangerController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("KThemeChanger"),
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
  State<KThemeChangerView> createState() => KThemeChangerController();
}
