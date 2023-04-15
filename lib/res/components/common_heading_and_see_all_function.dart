import 'package:flutter/material.dart';
import 'package:salvage_shoping_app/res/components/title_heading.dart';

import '../style/app_styles.dart';
import '../style/color.dart';

class CommonHeadingAndSeeAllFunction extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const CommonHeadingAndSeeAllFunction(
      {super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TitleHeading(title: title),
        InkWell(
          onTap: onTap,
          child: Text(
            'See all',
            style: AppStyles.fontSize12.copyWith(color: AppColors.blue),
          ),
        )
      ],
    );
  }
}
