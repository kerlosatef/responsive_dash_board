import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/model/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widget/active_and_inactiv_drawer_item.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.isSelected});
  final bool isSelected;
  @override
  final DrawerItemModel drawerItemModel;
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveDraweraItem(
            drawerItemModel: drawerItemModel,
          )
        : inActiveDraweraItem(drawerItemModel: drawerItemModel);
  }
}
