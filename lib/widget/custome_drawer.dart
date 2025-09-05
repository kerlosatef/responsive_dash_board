import 'dart:ui_web';

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/User_info_model.dart';
import 'package:responsive_dash_board/model/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widget/Drawer_item_list_view.dart';
import 'package:responsive_dash_board/widget/active_and_inactiv_drawer_item.dart';
import 'package:responsive_dash_board/widget/drawer_item.dart';
import 'package:responsive_dash_board/widget/user_info_list_tile.dart';

class CustomeDrawer extends StatelessWidget {
  CustomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                  iamge: Assets.imagesAvatar3,
                  title: 'Kerlos',
                  subTitle: "kerlos@gmail.com"),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(height: 8),
          ),
          Draweritemlistview(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                    child: SizedBox(
                  height: 20,
                )),
                inActiveDraweraItem(
                    drawerItemModel: DrawerItemModel(
                        title: "Setting system", icon: Assets.imagesSettings)),
                SizedBox(height: 20),
                inActiveDraweraItem(
                    drawerItemModel: DrawerItemModel(
                        title: "Logout accounts", icon: Assets.imagesLogout)),
                SizedBox(height: 48),
              ],
            ),
          )
        ],
      ),
    );
  }
}
