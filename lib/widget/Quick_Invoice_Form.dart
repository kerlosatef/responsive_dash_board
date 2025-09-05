import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widget/Custome_Button.dart';
import 'package:responsive_dash_board/widget/title_text_filed.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
                child: TitleTextFiled(
                    title: "Customer Name", hint: "Type Customer Name")),
            SizedBox(width: 16),
            Expanded(
                child: TitleTextFiled(
                    title: "Customer Email", hint: "Type Customer Email"))
          ],
        ),
        SizedBox(height: 24),
        Row(
          children: [
            Expanded(
                child: TitleTextFiled(
                    title: "Item Name", hint: "Type Customer Name")),
            SizedBox(width: 16),
            Expanded(child: TitleTextFiled(title: "Item price", hint: "USD"))
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Expanded(
                child: CustomeButton(
              text: "Add More Detalis",
              color: Colors.white,
              textcolor: Color(0xFF4EB7F2),
            )),
            SizedBox(width: 24),
            Expanded(
                child: CustomeButton(
              text: "Add More Detalis",
              color: Color(0xFF4EB7F2),
              textcolor: Colors.white,
            ))
          ],
        ),
      ],
    );
  }
}
