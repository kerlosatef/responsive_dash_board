import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/User_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widget/user_info_list_tile.dart';

class LatestTranscationListView extends StatelessWidget {
  const LatestTranscationListView({super.key});

  static const items = [
    UserInfoModel(
        iamge: Assets.imagesAvatar3,
        title: "Kerlos",
        subTitle: "Kerlos@gmail.com"),
    UserInfoModel(
        iamge: Assets.imagesAvatar2, title: "atef", subTitle: "atef@gmail.com"),
    UserInfoModel(
        iamge: Assets.imagesAvatar1,
        title: "Bishoy",
        subTitle: "Bishoy@gmail.com"),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((e) =>
                IntrinsicWidth(child: UserInfoListTile(userInfoModel: e)))
            .toList(),
      ),
    );
    // return SizedBox(
    //   height: 80,
    //   child: ListView.builder(
    //     itemCount: items.length,
    //     scrollDirection: Axis.horizontal,
    //     itemBuilder: (context, index) {
    //       return IntrinsicWidth(
    //           child: UserInfoListTile(
    //         userInfoModel: items[index],
    //       ));
    //     },
    //   ),
    // );
  }
}
