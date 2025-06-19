import 'package:auto_route/auto_route.dart';
import 'package:expenso_expense_tracker/config/themes/units.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final Color? titleColor;
  final Color? borderColor;

  const CustomAppBar({
    super.key,
    required this.title,
    this.titleColor,
    this.borderColor,
  });

  @override
  Size get preferredSize => Size.fromHeight(60.h); // Required by Scaffold

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(
          CupertinoIcons.left_chevron,
          color: Color(0xff885B2B),
        ),
        onPressed: () => context.router.pop(),
      ),
      title: Text(
        title,
        style: TextStyle(
          color: titleColor ?? Color(0xff885B2B),
          fontSize: 18.sp,
          fontWeight: FontWeight.w600,
        ),
      ),
      centerTitle: false,
      backgroundColor: Colors.transparent,
      elevation: 0,
      surfaceTintColor: Colors.transparent,
      flexibleSpace: Container(
        height: 200,
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border(
            bottom: BorderSide(
              color: borderColor ?? Color(0xffFFF7EE),
              width: 2.h,
            ),
          ),
        ),
      ),
    );
  }
}
