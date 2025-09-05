import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class AllExpernsessitemheader extends StatelessWidget {
  const AllExpernsessitemheader({
    super.key,
    required this.image,
    this.imageBackground,
    this.imageColor,
  });
  final String image;
  final Color? imageBackground, imageColor;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: imageBackground ?? Color(0xFFFAFAFA),
              ),
              child: SvgPicture.asset(
                image,
                colorFilter: ColorFilter.mode(
                    imageColor ?? Color(0xFF4EB7F2), BlendMode.srcIn),
                fit: BoxFit.scaleDown,
              ),
            ),
            Spacer(),
            Transform.rotate(
              angle: 3.14159,
              child: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: imageColor == null ? Color(0xFF064061) : Colors.white,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
