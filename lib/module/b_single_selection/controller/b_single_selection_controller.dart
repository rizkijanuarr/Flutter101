import 'package:flutter/material.dart';
import 'package:flutter101/core.dart';
import '../view/b_single_selection_view.dart';

class BSingleSelectionController extends State<BSingleSelectionView> {
  static late BSingleSelectionController instance;
  late BSingleSelectionView view;

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

  // Pertama kita buat datanya dulu yaa!
  List categories = [
    "Aan",
    "Citra",
    "Lestari",
    "Aziz",
    "Agung",
    "Nabila",
    "Tasim",
    "Kaleann semua keren!",
    "Good game bro dimanapun berada!"
  ];

  // Kedua kita buat warnanya ketika di select ya!
  int selectedIndex = -1;
  updateIndex(int newIndex) {
    selectedIndex = newIndex;
    setState(() {});
  }
}
