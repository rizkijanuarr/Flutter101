import 'package:flutter/material.dart';
import 'package:flutter101/core.dart';
import '../view/l_navigation_view.dart';

class LNavigationController extends State<LNavigationView> {
  static late LNavigationController instance;
  late LNavigationView view;

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

  List navigateItems = [
    {
      "label": "Dashboard",
      // halaman, sementara ditampilin container aja
      "view": Container(
        color: Colors.blueAccent,
      ),
    },
    {
      "label": "Pasien Baru",
      "view": Container(
        color: Colors.redAccent,
      ),
    },
    {
      "label": "Pasien Lama",
      "view": Container(
        color: Colors.greenAccent,
      ),
    },
    {
      "label": "BPJS",
      "view": Container(
        color: Colors.yellowAccent,
      ),
    },
    {
      "label": "Satu Sehat",
      "view": Container(
        color: Colors.orangeAccent,
      ),
    },
    {
      "label": "Settings",
      "view": Container(
        color: Colors.black,
      ),
    }
  ];

  // selected
  int selectedIndex = 0;
  Widget? currentView;
  updateIndex(int newIndex) {
    selectedIndex = newIndex;
    currentView = navigateItems[newIndex]["view"];
    setState(() {});
  }
}
