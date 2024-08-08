import 'package:flutter/material.dart';
import 'package:flutter101/core.dart';
import '../view/f_timer_view.dart';

class FTimerController extends State<FTimerView> {
  static late FTimerController instance;
  late FTimerView view;

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
