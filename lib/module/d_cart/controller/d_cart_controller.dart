import 'package:flutter/material.dart';
import 'package:flutter101/core.dart';
import '../view/d_cart_view.dart';

class DCartController extends State<DCartView> {
  static late DCartController instance;
  late DCartView view;

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
