import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widget/custom_text_field.dart';

class TitleTextFiled extends StatelessWidget {
  const TitleTextFiled({super.key, required this.title, required this.hint});
  final String title, hint;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.styleMedium16,
        ),
        SizedBox(height: 12),
        CustomTextField(hint: hint),
      ],
    );
  }
}
