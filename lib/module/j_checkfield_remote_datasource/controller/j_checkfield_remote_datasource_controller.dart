import 'package:flutter/material.dart';
import 'package:flutter101/core.dart';
import '../view/j_checkfield_remote_datasource_view.dart';

class JCheckfieldRemoteDatasourceController
    extends State<JCheckfieldRemoteDatasourceView> {
  static late JCheckfieldRemoteDatasourceController instance;
  late JCheckfieldRemoteDatasourceView view;

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
