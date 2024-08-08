import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter101/core.dart';
import 'package:get/get.dart';

import '../widget/dashboard_menu.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DashboardController>(
      init: DashboardController(),
      builder: (controller) {
        controller.view = this;

        return Theme(
          data: ThemeData().copyWith(
            // STYLE BACKGROUND COLOR
            scaffoldBackgroundColor: Colors.white,
            // STYLE APPBAR
            appBarTheme: AppBarTheme(
              // STYLE COLOR APPBAR
              backgroundColor: Colors.grey[300],
              toolbarHeight: 80.0,
              elevation: 0.0,
              // STYLE TITLE TEXT STYLE
              titleTextStyle: const TextStyle(
                color: Colors.black,
                fontSize: 16.0,
                fontWeight: FontWeight.bold,
              ),
              // STYLE ICON
              iconTheme: const IconThemeData(
                color: Colors.black,
              ),
            ),
          ),
          child: Scaffold(
            appBar: AppBar(
              title: const Text("Flutter 101\nWrite less do more!🚀"),
            ),
            body: SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(20.0),
                child: const Column(
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    DashboardMenu(),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
