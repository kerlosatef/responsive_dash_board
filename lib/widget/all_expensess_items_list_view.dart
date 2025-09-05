import 'package:flutter/material.dart';
import 'package:responsive_dash_board/model/all_exprensess_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widget/all_exprensess_item.dart';

class AllExpensessItemsListView extends StatefulWidget {
  const AllExpensessItemsListView({super.key});

  static const items = [
    AllExpensessItemModel(
        image: Assets.imagesBalance,
        title: "Income",
        date: "April 2022",
        price: "\$20,129"),
    AllExpensessItemModel(
        image: Assets.imagesIncome,
        title: "Shopping",
        date: "April 2022",
        price: "\$1,200"),
    AllExpensessItemModel(
        image: Assets.imagesExpenses,
        title: "Food",
        date: "April 2022",
        price: "\$3,500"),
  ];

  @override
  State<AllExpensessItemsListView> createState() =>
      _AllExpensessItemsListViewState();
}

class _AllExpensessItemsListViewState extends State<AllExpensessItemsListView> {
  int selectedIndex = 0;

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: AllExpensessItemsListView.items.asMap().entries.map((e) {
        final index = e.key;
        final item = e.value;

        return Expanded(
          child: GestureDetector(
            onTap: () => updateIndex(index),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: AllExprensessItem(
                itemModel: item,
                isSelected: selectedIndex == index,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
