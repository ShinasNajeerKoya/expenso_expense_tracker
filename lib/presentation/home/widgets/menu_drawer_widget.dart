import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/themes/colors.dart';
import '../../../config/themes/units.dart';
import '../../../generated/app_icons.dart';
import '../../../shared/helper_functions/custom_svg_icon.dart';
import '../utils/extensions/menu_drawer_items_extension.dart';

class MenuDrawerWidget extends StatelessWidget {
  const MenuDrawerWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showDialog(
          context: context,
          barrierDismissible: true,
          barrierColor: Colors.black.withOpacity(0.7),
          builder: (context) {
            return Stack(
              children: [
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: Container(
                    color: Colors.transparent,
                  ),
                ),
                Positioned(
                  top: 4.h,
                  right: 24.w,
                  child: Container(
                    height: 555.h,
                    width: 80.w,
                    padding: verticalPadding16,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: DrawerItem.values.map((item) {
                        return Tooltip(
                          message: item.label,
                          preferBelow: false,
                          verticalOffset: -14.h,
                          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
                          margin: EdgeInsets.only(right: 100.w), // push tooltip leftward
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(0.85),
                            borderRadius: BorderRadius.circular(10.r),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black26,
                                blurRadius: 6,
                                offset: Offset(2, 2),
                              ),
                            ],
                          ),
                          textStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                          ),
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () {
                                Navigator.of(context).pop();
                                // item.handleNavigation(context);
                              },
                              borderRadius: BorderRadius.circular(14.r),
                              child: Container(
                                height: 50.h,
                                width: 50.w,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(14.r), boxShadow: [
                                  BoxShadow(
                                    blurRadius: 4,
                                    offset: Offset(0, 6),
                                    color: AppColors.kHomeBlackColor.withOpacity(0.12),
                                  )
                                ]),
                                child: Center(
                                  child: CustomSvgIcon(item.icon),
                                ),
                              ),
                            ),
                          ),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ],
            );
          },
        );
      },
      child: Container(
        height: 40.h,
        width: 40.h,
        decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(14.r)),
        child: CustomSvgIcon(AppIcons.kProfile),
      ),
    );
  }
}
