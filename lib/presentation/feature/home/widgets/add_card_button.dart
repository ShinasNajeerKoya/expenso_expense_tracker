import 'package:expenso_expense_tracker/generated/app_icons.dart';
import 'package:expenso_expense_tracker/shared/helper_functions/custom_svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AddCardButton extends StatelessWidget {
  final VoidCallback onTap;

  const AddCardButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          height: 200.h,
          width: (286 + 76).w,
          decoration: BoxDecoration(
            color: const Color(0xFFF9F7F2),
            borderRadius: BorderRadius.circular(16.r),
          ),
          child: Center(
              child: GestureDetector(
            onTap: onTap,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
              decoration: BoxDecoration(
                color: const Color(0xFFD67D4F),
                borderRadius: BorderRadius.circular(100.r),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x33D67D4F),
                    blurRadius: 24,
                    spreadRadius: 2,
                  )
                ],
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Icon Placeholder
                  CustomSvgIcon(AppIcons.kSlantedCard, // your icon path
                      color: Colors.white),
                  SizedBox(width: 8.w),
                  Text(
                    "Add Card",
                    style: GoogleFonts.publicSans(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
          ))),
    );
  }
}
