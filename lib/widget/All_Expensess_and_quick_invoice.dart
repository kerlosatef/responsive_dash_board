import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/all_expensess.dart';
import 'package:responsive_dash_board/widget/quick_invoic.dart';

class AllExpensessandquickinvoice extends StatelessWidget {
  const AllExpensessandquickinvoice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 40),
        AllExpensess(),
        SizedBox(height: 24),
        QuickInvoic(),
      ],
    );
  }
}
