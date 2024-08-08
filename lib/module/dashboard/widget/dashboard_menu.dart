import 'package:flutter/material.dart';
import 'package:flutter101/core.dart';
import 'package:get/get.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class DashboardMenu extends StatelessWidget {
  const DashboardMenu({super.key});
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> menuItems = [
      {"label": "A. Counter", "page": ACounterView(), "icon": "🚀"},
      {
        "label": "B. Single Selection",
        "page": const BSingleSelectionView(),
        "icon": "✨"
      },
      {
        "label": "C. Multiple Selection",
        "page": const CMultipleSelectionView(),
        "icon": "☄️"
      },
      {"label": "D. Cart", "page": const DCartView(), "icon": "♨️"},
      {"label": "E. Animation", "page": const EAnimationView(), "icon": "☀️"},
      {"label": "F. Timer", "page": const FTimerView(), "icon": "☀️"},
      {
        "label": "G. Enabled or Diasbled",
        "page": const GEnabledDisabledView(),
        "icon": "☀️"
      },
      {
        "label": "H. HTTP Req Load",
        "page": const HHttpRequestLoadingView(),
        "icon": "☀️"
      },
      {
        "label": "I. Dropdown Datasource",
        "page": const IDropdownRemoteDatasourceView(),
        "icon": "☀️"
      },
      {
        "label": "J. Checkfield Datasource",
        "page": const JCheckfieldRemoteDatasourceView(),
        "icon": "☀️"
      },
      {
        "label": "K. Theme Changer",
        "page": const KThemeChangerView(),
        "icon": "☀️"
      },
      {"label": "L. Navigation", "page": const LNavigationView(), "icon": "☀️"},
    ];
    return GridView.builder(
      padding: EdgeInsets.zero,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 1 / 0.3,
        crossAxisCount: 2,
        mainAxisSpacing: 6,
        crossAxisSpacing: 6,
      ),
      itemCount: menuItems.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        var item = menuItems[index];
        return InkWell(
          onTap: () {
            Get.to(item["page"]);
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      item["label"],
                      style: const TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    item["icon"],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
