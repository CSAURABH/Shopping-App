import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salvage_shoping_app/res/components/common_heading_and_see_all_function.dart';
import 'package:salvage_shoping_app/res/components/section/new_in_bags_section.dart';
import 'package:salvage_shoping_app/res/components/section/new_in_clothes_section.dart';
import 'package:salvage_shoping_app/res/components/section/new_in_shoes_section.dart';
import 'package:salvage_shoping_app/res/components/title_heading.dart';
import 'package:salvage_shoping_app/res/style/app_styles.dart';
import 'package:salvage_shoping_app/res/style/color.dart';
import 'package:salvage_shoping_app/res/style/svg.dart';

class DashBoardScreen extends StatefulWidget {
  const DashBoardScreen({super.key});

  @override
  State<DashBoardScreen> createState() => _HomePageState();
}

class _HomePageState extends State<DashBoardScreen> {
  ValueNotifier<double> currentPageIndex = ValueNotifier(0.0);
  List<String> item = [
    'assets/images/slider1.jpg',
    'assets/images/slider2.jpg',
    'assets/images/slider3.jpg',
    'assets/images/slider1.jpg',
    'assets/images/slider2.jpg',
    'assets/images/slider3.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundWhite,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.backgroundWhite,
        leading: Padding(
          padding: EdgeInsets.all(8.sp),
          child: SvgPicture.asset(
            SvgIcons.menu,
          ),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: AppColors.avatarGrey,
            radius: 56.r,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10.h),
              Text(
                'Welcome',
                style: AppStyles.fontSize25.copyWith(
                  color: const Color(0xFF000000),
                ),
              ),
              Text(
                'Our Fashions App',
                style: AppStyles.fontSize20.copyWith(
                  color: const Color(0xFF666666),
                ),
              ),
              SizedBox(height: 20.h),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CarouselSlider(
                    items: item
                        .map(
                          (e) => SizedBox(
                            height: 200.h,
                            child: Image.asset(
                              e,
                              fit: BoxFit.cover,
                            ),
                          ),
                        )
                        .toList(),
                    options: CarouselOptions(
                      onPageChanged: (index, reason) {
                        currentPageIndex.value = double.parse(index.toString());
                      },
                      height: 170.h,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlayInterval: const Duration(seconds: 3),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.easeIn,
                      enlargeFactor: 0.1,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                  ValueListenableBuilder<double>(
                    valueListenable: currentPageIndex,
                    builder: (context, value, child) => DotsIndicator(
                      dotsCount: item.length,
                      position: value,
                      decorator: DotsDecorator(
                        size: Size.square(6.sp),
                        activeColor: Colors.white,
                        activeSize: const Size(20.0, 6.0),
                        activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.sp),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(height: 10.h),
              //Discount Section
              Row(
                children: [
                  const TitleHeading(title: 'Discount ends in'),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 6.sp),
                    height: 19.h,
                    width: 19.w,
                    color: AppColors.blackColor,
                    child: Center(
                      child: Text(
                        '02',
                        style: AppStyles.fontSize9
                            .copyWith(color: AppColors.whiteColor),
                      ),
                    ),
                  ),
                  SvgPicture.asset(SvgIcons.colon),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 6.sp),
                    height: 19.h,
                    width: 19.w,
                    color: AppColors.blackColor,
                    child: Center(
                      child: Text(
                        '24',
                        style: AppStyles.fontSize9
                            .copyWith(color: AppColors.whiteColor),
                      ),
                    ),
                  ),
                  SvgPicture.asset(SvgIcons.colon),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 6.sp),
                    height: 19.h,
                    width: 19.w,
                    color: AppColors.blackColor,
                    child: Center(
                      child: Text(
                        '09',
                        style: AppStyles.fontSize9
                            .copyWith(color: AppColors.whiteColor),
                      ),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    'See all',
                    style: AppStyles.fontSize12.copyWith(color: AppColors.blue),
                  )
                ],
              ),
              SizedBox(height: 15.h),
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
              SizedBox(height: 16.h),
              //Upcomming promotion section
              CommonHeadingAndSeeAllFunction(
                title: 'Upcoming promotion',
                onTap: () {},
              ),
              SizedBox(height: 16.h),
              SizedBox(
                height: 75.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) => Container(
                    width: 180.w,
                    margin: EdgeInsets.only(right: 5.w),
                    child: const Image(
                      image: AssetImage(
                        'assets/images/slider1.jpg',
                      ),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 22.h),
              // New in Shoes Section
              const NewInShoesSection(),
              // New in Clothes Section
              const NewInClothesScetion(),
              // New in Bags Section
              const NewInBagsSection(),
            ],
          ),
        ),
      ),
    );
  }
}
