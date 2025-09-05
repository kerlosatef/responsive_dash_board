import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/all_exprensess_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widget/In_Active_All_Expensess_Item.dart';
import 'package:responsive_dash_board/widget/all_expensess_item_header.dart';

class AllExprensessItem extends StatelessWidget {
  const AllExprensessItem(
      {super.key, required this.itemModel, required this.isSelected});
  final AllExpensessItemModel itemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected == true
        ? ActiveAllExpensessItem(itemModel: itemModel)
        : InActiveAllExpensessItem(itemModel: itemModel);
  }
}
