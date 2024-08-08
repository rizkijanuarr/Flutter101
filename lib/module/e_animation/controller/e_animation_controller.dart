import 'package:flutter/material.dart';
import 'package:flutter101/core.dart';
import '../view/e_animation_view.dart';

class EAnimationController extends State<EAnimationView> {
  static late EAnimationController instance;
  late EAnimationView view;

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
