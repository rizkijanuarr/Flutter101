import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter101/core.dart';
import 'package:intl/intl.dart';
import '../view/f_timer_view.dart';

class FTimerController extends State<FTimerView> {
  static late FTimerController instance;
  late FTimerView view;
  //
  late Timer timer;
  late String time = "02:22:22";
  //

  @override
  void initState() {
    //
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      time = DateFormat("kk:mm:ss").format(DateTime.now());
      setState(() {});
    });
    //
    super.initState();
    instance = this;
    WidgetsBinding.instance.addPostFrameCallback((_) => onReady());
  }

  void onReady() {}

  @override
  void dispose() {
    //
    timer.cancel();
    //
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
