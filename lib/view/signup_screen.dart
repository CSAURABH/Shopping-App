import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:salvage_shoping_app/res/style/app_styles.dart';
import 'package:salvage_shoping_app/res/style/color.dart';
import 'package:salvage_shoping_app/res/style/svg.dart';
import 'package:salvage_shoping_app/view/login_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundWhite,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.sp),
          child: Column(
            children: [
              SizedBox(height: 60.h),
              Text(
                'Create new account',
                style: AppStyles.bigHeading1,
              ),
              SizedBox(height: 50.h),
              TextFormField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(12.sp),
                    child: SvgPicture.asset(
                      SvgIcons.username,
                    ),
                  ),
                  label: Text(
                    'Username',
                    style: AppStyles.fontSize16.copyWith(color: AppColors.grey),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.sp),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  prefixIcon: Padding(
                    padding: EdgeInsets.all(12.sp),
                    child: SvgPicture.asset(
                      SvgIcons.passward,
                    ),
                  ),
                  label: Text(
                    'Password',
                    style: AppStyles.fontSize16.copyWith(color: AppColors.grey),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16.sp),
                  ),
                ),
              ),
              SizedBox(height: 50.h),
              SizedBox(
                height: 64.h,
                width: 366.w,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.backgroundOrange,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16.sp),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Sign Up',
                    style: AppStyles.fontSize18.copyWith(
                      color: AppColors.whiteColor,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              Text(
                'Forgot Password?',
                style: AppStyles.fontSize14.copyWith(color: AppColors.black),
              ),
              SizedBox(height: 10.h),
              const Divider(
                color: AppColors.dividerGrey,
                thickness: 1.0,
              ),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(SvgIcons.facebook),
                  SizedBox(width: 20.w),
                  SvgPicture.asset(SvgIcons.gmail),
                  SizedBox(width: 20.w),
                  SvgPicture.asset(SvgIcons.apple),
                ],
              ),
              SizedBox(height: 20.h),
              RichText(
                text: TextSpan(
                  text: 'Already have an account? ',
                  style: AppStyles.fontSize14.copyWith(
                    color: AppColors.black.withOpacity(0.4),
                  ),
                  children: [
                    TextSpan(
                      text: 'Login',
                      style: AppStyles.fontSize14.copyWith(
                        color: AppColors.backgroundOrange,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          );
                        },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
