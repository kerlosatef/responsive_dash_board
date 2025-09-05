import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/all_exprensess_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widget/all_expensess_item_header.dart';

class InActiveAllExpensessItem extends StatelessWidget {
  const InActiveAllExpensessItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensessItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(12),
            side: BorderSide(width: 1, color: Color(0xFFF1F1F1))),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpernsessitemheader(
            image: itemModel.image,
          ),
          const SizedBox(height: 34),
          Text(itemModel.title, style: AppStyles.styleSemiBold16),
          const SizedBox(height: 8),
          Text(itemModel.date, style: AppStyles.styleRegular14),
          const SizedBox(height: 16),
          Text(itemModel.price, style: AppStyles.styleBold16),
        ],
      ),
    );
  }
}

class ActiveAllExpensessItem extends StatelessWidget {
  const ActiveAllExpensessItem({
    super.key,
    required this.itemModel,
  });

  final AllExpensessItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(12),
        ),
        color: Color(0xFF4DB7F2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpernsessitemheader(
            imageBackground: Colors.white.withOpacity(0.10000000149011612),
            imageColor: Colors.white,
            image: itemModel.image,
          ),
          const SizedBox(height: 34),
          Text(itemModel.title,
              style: AppStyles.styleSemiBold16.copyWith(color: Colors.white)),
          const SizedBox(height: 8),
          Text(itemModel.date,
              style:
                  AppStyles.styleRegular14.copyWith(color: Color(0xFFFAFAFA))),
          const SizedBox(height: 16),
          Text(itemModel.price,
              style: AppStyles.styleBold16.copyWith(color: Colors.white)),
        ],
      ),
    );
  }
}
