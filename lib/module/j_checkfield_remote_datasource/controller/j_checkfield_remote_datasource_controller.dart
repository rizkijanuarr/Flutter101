import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter101/core.dart';
import '../view/j_checkfield_remote_datasource_view.dart';

class JCheckfieldRemoteDatasourceController
    extends State<JCheckfieldRemoteDatasourceView> {
  static late JCheckfieldRemoteDatasourceController instance;
  late JCheckfieldRemoteDatasourceView view;

  @override
  void initState() {
    getUsers(); //
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
  List<Map<String, dynamic>> users = [];
  getUsers() async {
    var response = await Dio().get(
      "https://reqres.in/api/users",
      options: Options(
        headers: {
          "Content-Type": "application/json",
        },
      ),
    );
    Map obj = response.data;
    // users = obj["data"];
    List items = obj["data"];
    for (var item in items) {
      users.add({
        "label": item["first_name"],
        "value": item["id"],
      });
    }
    setState(() {});
  }
  //
}
