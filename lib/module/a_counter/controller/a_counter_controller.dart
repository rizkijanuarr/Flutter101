import 'package:flutter/material.dart';
import 'package:flutter101/core.dart';
import '../view/a_counter_view.dart';

class ACounterController extends State<ACounterView> {
  static late ACounterController instance;
  late ACounterView view;

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

  // LOGIC TAMBAH COUNTER +1
  int tambah = 0;
  tambahCounter() {
    tambah++;
    setState(() {});
  }

  // LOGIC KURANG COUNTER -1
  int kurang = 0;
  kurangCounter() {
    kurang--;
    setState(() {});
  }
}
