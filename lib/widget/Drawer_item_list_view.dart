import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widget/drawer_item.dart';

class Draweritemlistview extends StatefulWidget {
  const Draweritemlistview({
    super.key,
  });

  @override
  State<Draweritemlistview> createState() => _DraweritemlistviewState();
}

int selectedIndex = 0;
List<DrawerItemModel> items = [
  DrawerItemModel(title: 'Dashboard', icon: Assets.imagesDashboard),
  DrawerItemModel(title: 'My Transaction', icon: Assets.imagesMyTransctions),
  DrawerItemModel(title: 'Statistics', icon: Assets.imagesStatistics),
  DrawerItemModel(title: 'Wallet Account', icon: Assets.imagesWalletAccount),
  DrawerItemModel(title: 'My Investments', icon: Assets.imagesIncome),
];

class _DraweritemlistviewState extends State<Draweritemlistview> {
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (selectedIndex != index) {
              setState(() {
                selectedIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              drawerItemModel: items[index],
              isSelected: selectedIndex == index,
            ),
          ),
        );
      },
    );
  }
}
