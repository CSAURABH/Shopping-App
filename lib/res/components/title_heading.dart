import 'package:flutter/material.dart';

import '../style/app_styles.dart';
import '../style/color.dart';

class TitleHeading extends StatelessWidget {
  final String title;
  const TitleHeading({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppStyles.fontSize12.copyWith(
        color: AppColors.blackColor,
      ),
    );
  }
}
