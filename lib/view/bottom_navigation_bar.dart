import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salvage_shoping_app/res/style/color.dart';
import 'package:salvage_shoping_app/res/style/svg.dart';
import 'package:salvage_shoping_app/view/account_screen.dart';
import 'package:salvage_shoping_app/view/cart_screen.dart';
import 'package:salvage_shoping_app/view/category_screen.dart';
import 'package:salvage_shoping_app/view/dashboard_screen.dart';
import 'package:salvage_shoping_app/view/wish_list_screen.dart';

// ignore: must_be_immutable
class BottomNavigationBarComponent extends StatelessWidget {
  BottomNavigationBarComponent({super.key});

  ValueNotifier<int> currentIndex = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    List<Widget> screens = [
      const DashBoardScreen(),
      const CategoryScreen(),
      const CartScreen(),
      const WishListScreen(),
      const AccountScreen(),
    ];
    return Scaffold(
      body: ValueListenableBuilder<int>(
        valueListenable: currentIndex,
        builder: (context, value, child) => screens.elementAt(value),
      ),
      bottomNavigationBar: SizedBox(
        height: 70.h,
        child: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: AppColors.blue,
          ),
          child: ValueListenableBuilder<int>(
            valueListenable: currentIndex,
            builder: (context, value, child) => BottomNavigationBar(
              onTap: (value) {
                currentIndex.value = value;
              },
              currentIndex: value,
              selectedItemColor: AppColors.whiteColor,
              unselectedItemColor: AppColors.black,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              selectedLabelStyle: TextStyle(height: 2, fontSize: 12.sp),
              unselectedLabelStyle: TextStyle(fontSize: 12.sp, height: 2),
              backgroundColor: AppColors.blue,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    SvgIcons.home,
                    height: 25.h,
                    color: value == 0 ? AppColors.whiteColor : AppColors.black,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    SvgIcons.category,
                    height: 25.h,
                    color: value == 1 ? AppColors.whiteColor : AppColors.black,
                  ),
                  label: 'Category',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    SvgIcons.shoppingBag,
                    height: 25.h,
                    color: value == 2 ? AppColors.whiteColor : AppColors.black,
                  ),
                  label: 'Bag',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    SvgIcons.wishList,
                    height: 25.h,
                    color: value == 3 ? AppColors.whiteColor : AppColors.black,
                  ),
                  label: 'Wishtlist',
                ),
                BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    SvgIcons.account,
                    height: 25.h,
                    color: value == 4 ? AppColors.whiteColor : AppColors.black,
                  ),
                  label: 'Account',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
