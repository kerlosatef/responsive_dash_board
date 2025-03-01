import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widget/drawer_item.dart';

class Draweritemlistview extends StatelessWidget {
  const Draweritemlistview({
    super.key,
  });

  static const List<DrawerItemModel> items = [
    DrawerItemModel(title: 'Dashboard', icon: Assets.imagesDashboard),
    DrawerItemModel(title: 'My Transaction', icon: Assets.imagesMyTransctions),
    DrawerItemModel(title: 'Statistics', icon: Assets.imagesStatistics),
    DrawerItemModel(title: 'Wallet Account', icon: Assets.imagesWalletAccount),
    DrawerItemModel(title: 'My Investments', icon: Assets.imagesIncome),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 20),
          child:
              GestureDetector(child: DrawerItem(drawerItemModel: items[index])),
        );
      },
    );
  }
}
