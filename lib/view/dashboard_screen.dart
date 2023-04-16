import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salvage_shoping_app/res/components/section/discount_ends_in_section.dart';
import 'package:salvage_shoping_app/res/components/section/new_in_bags_section.dart';
import 'package:salvage_shoping_app/res/components/section/new_in_clothes_section.dart';
import 'package:salvage_shoping_app/res/components/section/new_in_electronics_section.dart';
import 'package:salvage_shoping_app/res/components/section/new_in_jewellery_section.dart';
import 'package:salvage_shoping_app/res/components/section/new_in_shoes_section.dart';
import 'package:salvage_shoping_app/res/components/section/upcoming_promotion_section.dart';
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
              //Discount ends in Section
              const DiscountEndsInSection(),
              //Upcomming promotion section
              const UpComingPromotionSection(),
              // New in Shoes Section
              const NewInShoesSection(),
              // New in Clothes Section
              const NewInClothesScetion(),
              // New in Bags Section
              const NewInBagsSection(),
              // New in Electronics Section
              const NewInElectronicsScetion(),
              // New in jewellery Section
              const NewInJewelleryScetion(),
            ],
          ),
        ),
      ),
    );
  }
}
