import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widget/Latest_Trasnaction_ListView.dart';
import 'package:responsive_dash_board/widget/user_info_list_tile.dart';

class LatestTrasnaction extends StatelessWidget {
  const LatestTrasnaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Lastest Treansaction",
          style: AppStyles.styleMedium16,
        ),
        LatestTranscationListView(),
      ],
    );
  }
}
