import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../style/app_styles.dart';
import '../../style/color.dart';
import '../../style/svg.dart';
import '../common_heading_and_see_all_function.dart';

class NewInClothesScetion extends StatelessWidget {
  const NewInClothesScetion({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CommonHeadingAndSeeAllFunction(
          title: 'New in Clothes',
          onTap: () {},
        ),
        SizedBox(height: 14.h),
        SizedBox(
          height: 150.h,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) => Container(
              width: 125.w,
              margin: EdgeInsets.only(right: 5.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 100.h,
                    width: double.infinity,
                    child: const Image(
                      image: AssetImage(
                        'assets/images/onboarding1.jpg',
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Donatello',
                                style: AppStyles.fontSize9w400.copyWith(
                                  color: AppColors.blackColor,
                                ),
                              ),
                              Text(
                                'Cream elegant',
                                style: AppStyles.fontSize9w400.copyWith(
                                  color: AppColors.lightGrey,
                                ),
                              ),
                            ],
                          ),
                          SvgPicture.asset(
                            SvgIcons.unSavedHeart,
                            height: 15.h,
                          )
                        ],
                      ),
                      Text(
                        '\$ 398.90',
                        style: AppStyles.fontSize9w400,
                      ),
                      Text(
                        '\$ 402.90',
                        style: AppStyles.fontSize9w400.copyWith(
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
