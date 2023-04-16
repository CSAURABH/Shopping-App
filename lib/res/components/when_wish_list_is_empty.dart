import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salvage_shoping_app/res/style/app_styles.dart';
import 'package:salvage_shoping_app/res/style/color.dart';
import 'package:salvage_shoping_app/res/style/svg.dart';

class WhenWishListIsEmptyScreen extends StatelessWidget {
  const WhenWishListIsEmptyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(width: double.infinity),
        SvgPicture.asset(
          SvgIcons.unSavedHeart,
          height: 78.h,
          color: AppColors.grey,
        ),
        SizedBox(height: 10.h),
        Text(
          'Your wishlist is empty',
          style: AppStyles.fontSize16.copyWith(color: AppColors.icongrey),
        ),
        SizedBox(height: 12.h),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.blue,
          ),
          onPressed: () {},
          child: Text(
            'SHOP NOW',
            style: AppStyles.fontSize12,
          ),
        ),
      ],
    );
  }
}
