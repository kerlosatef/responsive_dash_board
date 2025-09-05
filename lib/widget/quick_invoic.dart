import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widget/Latest_Trasnaction.dart';
import 'package:responsive_dash_board/widget/Latest_Trasnaction_ListView.dart';
import 'package:responsive_dash_board/widget/Quick_Invoice_Form.dart';
import 'package:responsive_dash_board/widget/all_expensess.dart';
import 'package:responsive_dash_board/widget/custom_text_field.dart';
import 'package:responsive_dash_board/widget/quick_invoice_Header.dart';
import 'package:responsive_dash_board/widget/title_text_filed.dart';

class QuickInvoic extends StatelessWidget {
  const QuickInvoic({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomeBackgroundContainer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoicHeader(),
          LatestTrasnaction(),
          Divider(height: 48),
          QuickInvoiceForm(),
        ],
      ),
    );
  }
}
