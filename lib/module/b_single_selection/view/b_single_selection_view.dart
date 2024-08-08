import 'package:flutter/material.dart';
import 'package:flutter101/core.dart';
import '../controller/b_single_selection_controller.dart';

class BSingleSelectionView extends StatefulWidget {
  const BSingleSelectionView({super.key});

  Widget build(context, BSingleSelectionController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Single Selection"),
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
                  bool selected = controller.selectedIndex == index;
                  return Card(
                    // warna
                    color: selected ? Colors.redAccent : Colors.white,
                    child: ListTile(
                      // warna
                      onTap: () => controller.updateIndex(index),
                      title: Text(
                        "$item",
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
          ],
        ),
      ),
    );
  }

  @override
  State<BSingleSelectionView> createState() => BSingleSelectionController();
}
