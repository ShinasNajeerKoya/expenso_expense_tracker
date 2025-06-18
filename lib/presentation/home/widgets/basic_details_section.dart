import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../generated/app_icons.dart';
import '../../../shared/helper_functions/custom_svg_icon.dart';

class BasicDetailsSection extends StatelessWidget {
  const BasicDetailsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 20.h,
              width: 20.h,
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
          style: TextStyle(fontSize: 22.sp, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
