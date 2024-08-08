import 'package:flutter/material.dart';
import 'package:flutter101/core.dart';
import '../view/i_dropdown_remote_datasource_view.dart';

class IDropdownRemoteDatasourceController
    extends State<IDropdownRemoteDatasourceView> {
  static late IDropdownRemoteDatasourceController instance;
  late IDropdownRemoteDatasourceView view;

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
