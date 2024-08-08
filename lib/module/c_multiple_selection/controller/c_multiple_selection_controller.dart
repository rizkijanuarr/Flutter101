import 'package:flutter/material.dart';
import 'package:flutter101/core.dart';
import '../view/c_multiple_selection_view.dart';

class CMultipleSelectionController extends State<CMultipleSelectionView> {
  static late CMultipleSelectionController instance;
  late CMultipleSelectionView view;

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
