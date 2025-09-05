import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/All_Expensess_and_quick_invoice.dart';
import 'package:responsive_dash_board/widget/all_expensess.dart';
import 'package:responsive_dash_board/widget/custome_drawer.dart';
import 'package:responsive_dash_board/widget/quick_invoic.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomeDrawer()),
        SizedBox(width: 32),
        Expanded(
            flex: 2,
            child: Column(
              children: [
                Expanded(
                  child: AllExpensessandquickinvoice(),
                ),
              ],
            ))
      ],
    );
  }
}
