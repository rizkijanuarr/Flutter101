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

  // Pertama kita buat datanya dulu yaa!
  List<Map<String, dynamic>> categories = [
    {
      "label": "Aan",
    },
    {
      "label": "Citra",
    },
    {
      "label": "Lestari",
    },
    {
      "label": "Aziz",
    },
    {
      "label": "Agung",
    },
    {
      "label": "Nabila",
    },
    {
      "label": "Tasim",
    },
    {
      "label": "Kaleann semua keren!",
    },
    {
      "label": "Good game bro dimanapun berada!",
    }
  ];

  // Kedua kita buat warnanya ketika di select ya!
  updateIndex(int newIndex) {
    if (categories[newIndex]["selected"] == true) {
      categories[newIndex]["selected"] = false;
    } else {
      categories[newIndex]["selected"] = true;
    }
    setState(() {});
  }

  // save apa yang di selected
  List getValues() {
    return categories.where((i) => i["selected"] == true).toList();
  }

  doSave() {
    var selectedValues = getValues();

    // Tampilkan di console
    print(selectedValues);

    // Tampilkan di ui melalui dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Result Multiple Select"),
          content: Text(selectedValues.isNotEmpty
              ? selectedValues.map((e) => e["label"]).join("\n")
              : "No values selected."),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("OK"),
            ),
          ],
        );
      },
    );
  }
}
