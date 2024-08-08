import 'package:flutter/material.dart';
import 'package:flutter101/core.dart';
import '../controller/c_multiple_selection_controller.dart';

class CMultipleSelectionView extends StatefulWidget {
  const CMultipleSelectionView({Key? key}) : super(key: key);

  Widget build(context, CMultipleSelectionController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("CMultipleSelection"),
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
  State<CMultipleSelectionView> createState() => CMultipleSelectionController();
}
