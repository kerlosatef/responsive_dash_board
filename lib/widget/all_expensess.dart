import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/all_exprensess_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widget/All_Expensess_Header.dart';
import 'package:responsive_dash_board/widget/all_expensess_items_list_view.dart';
import 'package:responsive_dash_board/widget/all_exprensess_item.dart';
import 'package:responsive_dash_board/widget/quick_invoic.dart';

class AllExpensess extends StatelessWidget {
  const AllExpensess({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomeBackgroundContainer(
      child: Column(
        children: [
          AllExpensessHeader(),
          SizedBox(height: 16),
          AllExpensessItemsListView(),
        ],
      ),
    );
  }
}

class CustomeBackgroundContainer extends StatelessWidget {
  const CustomeBackgroundContainer({
    super.key,
    required this.child,
    this.padding,
  });
  final Widget child;
  final double? padding;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(padding ?? 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: child);
  }
}
