import 'package:flutter/material.dart';
import 'package:flutter101/core.dart';
import 'package:window_manager/window_manager.dart';
import '../view/k_theme_changer_view.dart';

class KThemeChangerController extends State<KThemeChangerView> {
  static late KThemeChangerController instance;
  late KThemeChangerView view;

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

  //
  ThemeData theme = ThemeData();

  switchToDark() {
    theme = ThemeData.dark();
    setState(() {});
  }

  switchToLight() {
    theme = ThemeData.light().copyWith(
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.blue,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
        iconTheme: IconThemeData(color: Colors.white),
      ),
    );
    setState(() {});
  }
  //
}
