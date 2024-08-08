import 'package:flutter/material.dart';
import '../controller/h_http_request_loading_controller.dart';
import 'package:flutter101/core.dart';
import 'package:get/get.dart';

class HHttpRequestLoadingView extends StatelessWidget {
  const HHttpRequestLoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HHttpRequestLoadingController>(
      init: HHttpRequestLoadingController(),
      builder: (controller) {
        controller.view = this;

        return Scaffold(
          appBar: AppBar(
            title: const Text("HHttpRequestLoading"),
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
      },
    );
  }
}
