import 'package:flutter/material.dart';
import 'package:flutter101/core.dart';
import '../controller/h_http_request_loading_controller.dart';

class HHttpRequestLoadingView extends StatefulWidget {
  const HHttpRequestLoadingView({Key? key}) : super(key: key);

  Widget build(context, HHttpRequestLoadingController controller) {
    controller.view = this;
    return Scaffold(
      appBar: AppBar(
        title: const Text("HHttpRequestLoading"),
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
  State<HHttpRequestLoadingView> createState() =>
      HHttpRequestLoadingController();
}
