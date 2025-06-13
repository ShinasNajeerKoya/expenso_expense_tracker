import 'package:expenso_expense_tracker/config/themes/colors.dart';
import 'package:expenso_expense_tracker/config/themes/units.dart';
import 'package:expenso_expense_tracker/generated/app_icons.dart';
import 'package:expenso_expense_tracker/shared/helper_functions/custom_svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 400.h,
            width: 390.w,
            padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 20.h),
            decoration: BoxDecoration(
                color: AppColors.kHomeBlackColor,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.r),
                    bottomRight: Radius.circular(30.r))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 40.h,
                      width: 40.h,
                      // child: CustomSvgIcon(AppIconsOld.kDoubleArrow),
                      child: CustomSvgIcon(AppIcons.kFileAdd),
                    ),
                    Container(
                      height: 40.h,
                      width: 40.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14.r)),
                      // child: CustomSvgIcon(AppIconsOld.kDoubleArrow),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20.h,
                      width: 20.h,
                      // child: CustomSvgIcon(AppIconsOld.kDoubleArrow),
                      child: CustomSvgIcon(AppIcons.kSunrise),
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    Text(
                      'Good Morning',
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                Text(
                  'Welcome Shinas',
                  style: TextStyle(
                      fontSize: 22.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 12.h,
                ),
                CreditCardWidget()
              ],
            ),
          ),
          verticalMargin16,
          Container(
            height: 285.h,
            width: 360.w,
            decoration: BoxDecoration(
                color: AppColors.kHomeGraphBgColor,
                borderRadius: BorderRadius.circular(20.r)),
          ),
        ],
      ),
    );
  }
}

class CreditCardWidget extends StatelessWidget {
  const CreditCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      width: (286 + 76).w,
      child: Row(
        children: [
          /// Left Section (Texts)
          Expanded(
            flex: 78,
            child: Container(
              padding: EdgeInsets.all(16.r),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(22.r),
                  bottomLeft: Radius.circular(22.r),
                ),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF9F9F9F),
                    Color(0xFF7A7A7A),
                    Color(0xFF5E5E5E),
                    Color(0xFF4B4B4B),
                    Color(0xFF333333),
                    Color(0xFF252525),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Available Credit",
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 12.sp,
                        ),
                      ),
                      SizedBox(height: 36.h,width: 36.h,child: CustomSvgIcon(AppIcons.kRfid),)
                    ],
                  ),
                  Text(
                    "\$12000",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "****  ****  ****  0023",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.sp,
                      letterSpacing: 2,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Card Holder",
                            style:
                                TextStyle(color: Colors.white70, fontSize: 12),
                          ),
                          Text(
                            "Shinas Koya",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ],
                      ),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Valid Thru",
                            style:
                                TextStyle(color: Colors.white70, fontSize: 12),
                          ),
                          Text(
                            "08/25",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),

          /// Right Section (Icons area)
          Expanded(
            flex: 22,
            child: Container(
              padding: EdgeInsets.only(
                left: 16.w,
                right: 16.w,
                bottom: 8.w,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(22.r),
                  bottomRight: Radius.circular(22.r),
                ),
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF7E7976),
                    Color(0xFF776962),
                    Color(0xFF70655F),
                    Color(0xFF5A524E),
                    Color(0xFF49423F),
                    Color(0xFF443C39),
                    Color(0xFF443C39),
                    Color(0xFF443C39)
                  ],
                  begin: Alignment.centerLeft,
                  end: Alignment.centerRight,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Tap Icon Placeholder
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      height: 48.r,
                      width: 48.r,
                      // Replace this with your tap SVG later
                      child: CustomSvgIcon(AppIcons.kMasterCard),
                    ),
                  ),
                  // Card Logo Placeholder
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
