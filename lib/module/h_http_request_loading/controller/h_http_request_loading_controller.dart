import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter101/core.dart';
import '../view/h_http_request_loading_view.dart';

class HHttpRequestLoadingController extends State<HHttpRequestLoadingView> {
  static late HHttpRequestLoadingController instance;
  late HHttpRequestLoadingView view;

  @override
  void initState() {
    //
    getProducts();
    //
    super.initState();
    instance = this;
    WidgetsBinding.instance.addPostFrameCallback((_) => onReady());
  }

  void onReady() {}

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  //
  List users = [];
  bool loading = true;
  getProducts() async {
    var response = await Dio().get(
      "https://reqres.in/api/users",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    await Future.delayed(const Duration(seconds: 5));
    Map obj = response.data;
    users = obj["data"];
    loading = false;
    setState(() {});
  }
  //
}
