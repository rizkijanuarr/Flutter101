import 'package:flutter/material.dart';
import 'package:flutter101/core.dart';
import '../view/g_enabled_disabled_view.dart';

class GEnabledDisabledController extends State<GEnabledDisabledView> {
  static late GEnabledDisabledController instance;
  late GEnabledDisabledView view;

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
