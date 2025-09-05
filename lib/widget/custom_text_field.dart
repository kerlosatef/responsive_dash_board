import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hint});
  final String hint;
  @override
  Widget build(BuildContext context) {
    return TextField(
      textAlign: TextAlign.center,
      decoration: InputDecoration(
          fillColor: Color(0xFFFAFAFA),
          filled: true,
          hintText: hint,
          hintStyle:
              AppStyles.styleRegular16.copyWith(color: Color(0xFFAAAAAA)),
          border: buildborder(),
          enabledBorder: buildborder(),
          focusedBorder: buildborder()),
    );
  }

  OutlineInputBorder buildborder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(
        color: Color(0xFFFAFAFA),
      ),
    );
  }
}
