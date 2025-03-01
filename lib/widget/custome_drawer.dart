import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widget/Drawer_item_list_view.dart';
import 'package:responsive_dash_board/widget/drawer_item.dart';
import 'package:responsive_dash_board/widget/user_info_list_tile.dart';

class CustomeDrawer extends StatelessWidget {
  CustomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          UserInfoListTile(
            image: Assets.imagesAvatar3,
            title: 'John Doe',
            subtitle: 'software developer',
          ),
          SizedBox(height: 8),
          Draweritemlistview()
        ],
      ),
    );
  }
}
