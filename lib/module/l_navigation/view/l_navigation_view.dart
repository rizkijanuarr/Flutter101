import 'package:flutter/material.dart';
import 'package:flutter101/core.dart';
import '../controller/l_navigation_controller.dart';

class LNavigationView extends StatefulWidget {
  const LNavigationView({super.key});

  Widget build(context, LNavigationController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation"),
        actions: const [],
      ),
      body: Stack(
        children: [
          controller.currentView ?? Container(),
          Positioned(
            left: 20.0,
            top: 20.0,
            // right: 20.0,
            // bottom: 20.0,
            child: Container(
              height: 200,
              width: 120.0,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(
                  Radius.circular(12.0),
                ),
              ),
              child: Column(
                children: List.generate(
                  controller.navigateItems.length,
                  (index) {
                    var item = controller.navigateItems[index];
                    bool selected = controller.selectedIndex == index;
                    return Expanded(
                      child: InkWell(
                        onTap: () => controller.updateIndex(index),
                        child: Center(
                          child: AnimatedScale(
                            scale: selected ? 1.3 : 1.0,
                            duration: const Duration(milliseconds: 900),
                            child: Text(
                              "${item["label"]}",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: selected ? 14.0 : 12.0,
                              ),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<LNavigationView> createState() => LNavigationController();
}
