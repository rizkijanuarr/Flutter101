import 'package:flutter/material.dart';
import 'package:flutter101/core.dart';
import '../controller/c_multiple_selection_controller.dart';

class CMultipleSelectionView extends StatefulWidget {
  const CMultipleSelectionView({super.key});

  Widget build(context, CMultipleSelectionController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Multiple Selection"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            // Implementasi Datanya!
            Expanded(
              child: ListView.builder(
                // data
                itemCount: controller.categories.length,
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                clipBehavior: Clip.none,
                itemBuilder: (context, index) {
                  // data
                  var item = controller.categories[index];
                  // warna
                  bool selected = item["selected"] == true;
                  return Card(
                    // warna
                    color: selected ? Colors.redAccent : Colors.white,
                    child: ListTile(
                      // warna
                      onTap: () => controller.updateIndex(index),
                      title: Text(
                        "${item["label"]}",
                        // warna
                        style: TextStyle(
                          color: selected ? Colors.white : Colors.black,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.save),
              label: const Text("Saved!"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                foregroundColor: Colors.white,
              ),
              onPressed: () => controller.doSave(),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<CMultipleSelectionView> createState() => CMultipleSelectionController();
}
