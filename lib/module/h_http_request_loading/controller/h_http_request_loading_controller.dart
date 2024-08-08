import 'package:flutter/material.dart';
import 'package:flutter101/core.dart';
import '../view/h_http_request_loading_view.dart';

class HHttpRequestLoadingController extends State<HHttpRequestLoadingView> {
  static late HHttpRequestLoadingController instance;
  late HHttpRequestLoadingView view;

  @override
  void initState() {
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
}
