import 'package:expenso_expense_tracker/generated/locale_keys.g.dart';
import 'package:expenso_expense_tracker/shared/extensions/string_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:expenso_expense_tracker/generated/app_icons.dart';
import 'package:expenso_expense_tracker/shared/helper_functions/custom_svg_icon.dart';

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
              LocaleKeys.goodMorning.toLocalizeString,
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
        SizedBox(
          height: 8.h,
        ),
        Text(
          '${LocaleKeys.welcome.toLocalizeString} Shinas',
          style: TextStyle(fontSize: 22.sp, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
