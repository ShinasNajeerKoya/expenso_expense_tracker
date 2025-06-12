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
            padding: allPadding16,
            decoration: BoxDecoration(
                color: AppColors.kHomeBlackColor,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(30.r), bottomRight: Radius.circular(30.r))),
            child: SafeArea(
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 30.h,
                        width: 30.h,
                        // child: CustomSvgIcon(AppIconsOld.kDoubleArrow),
                        child: CustomSvgIcon(AppIcons.kFileAdd),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
          verticalMargin16,
          Container(
            height: 285.h,
            width: 360.w,
            decoration: BoxDecoration(color: AppColors.kHomeGraphBgColor, borderRadius: BorderRadius.circular(20.r)),
          ),
        ],
      ),
    );
  }
}
