import 'dart:developer';

import 'package:expenso_expense_tracker/config/themes/units.dart';
import 'package:expenso_expense_tracker/generated/app_icons.dart';
import 'package:expenso_expense_tracker/generated/locale_keys.g.dart';
import 'package:expenso_expense_tracker/presentation/widgets/custom_app_bar.dart';
import 'package:expenso_expense_tracker/presentation/widgets/my_text.dart';
import 'package:expenso_expense_tracker/shared/extensions/string_extensions.dart';
import 'package:expenso_expense_tracker/shared/helper_functions/custom_svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class AppAboutPage extends StatelessWidget {
  static const id = '/appAboutPage';
  const AppAboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(title: LocaleKeys.about.toLocalizeString, borderColor: Color(0xffFFEEDC), borderWidth: 1.h),
      body: Column(
        children: [
          Container(
            height: 112.h,
            decoration: BoxDecoration(
              // color: Colors.yellow,
              border: Border(
                bottom: BorderSide(
                  color: Color(0xffFFEEDC),
                  width: 1.h,
                ),
              ),
            ),
            child: CustomSvgIcon(AppIcons.kAboutHeader),
          ),
          verticalMargin36,
          Padding(
            padding: horizontalPadding16,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyText(
                  LocaleKeys.aboutTitle.toLocalizeString,
                  fontSize: 16.sp,
                ),
                verticalMargin36,
                MyText(
                  LocaleKeys.aboutBody.toLocalizeString,
                  fontSize: 12.sp,
                  maxLines: 10,
                  letterSpacing: 1.w,
                  lineHeight: 2.h,
                  fontWeight: FontWeight.normal,
                  fontColor: Color(0xffC49A6C),
                ),
                verticalMargin36,
                Center(child: CustomSvgIcon(AppIcons.kRoyalDivider)),
                verticalMargin36,
                AboutUrlRowButtonWidget(
                  onTap: () => log('Visit website tapped'),
                  title: LocaleKeys.visitWebsite.toLocalizeString,
                ),
                AboutUrlRowButtonWidget(
                  onTap: () => log('Terms and conditions tapped'),
                  title: LocaleKeys.termsAndConditions.toLocalizeString,
                ),
                AboutUrlRowButtonWidget(
                  onTap: () => log('Privacy Policies tapped'),
                  title: LocaleKeys.privacyPolicies.toLocalizeString,
                ),
                verticalMargin36,
                MyText(
                  LocaleKeys.followUsOn.toLocalizeString,
                  fontSize: 11.sp,
                  letterSpacing: 1.w,
                  fontWeight: FontWeight.normal,
                ),
                verticalMargin8,
                Row(
                  children: [
                    AboutSocialMediaButtonWidget(
                      svgPath: AppIcons.kXTwitter,
                      onTap: () => log('x twitter tapped'),
                    ),
                    AboutSocialMediaButtonWidget(
                      svgPath: AppIcons.kInstagram,
                      onTap: () => log('instagram tapped'),
                    ),
                    AboutSocialMediaButtonWidget(
                      svgPath: AppIcons.kYoutube,
                      onTap: () => log('youtube tapped'),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class AboutSocialMediaButtonWidget extends StatelessWidget {
  final void Function()? onTap;
  final String svgPath;

  const AboutSocialMediaButtonWidget({
    super.key,
    required this.onTap,
    required this.svgPath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: rightPadding20,
      child: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: onTap,
        child: SizedBox(
          height: 16.h,
          width: 16.h,
          child: CustomSvgIcon(svgPath),
        ),
      ),
    );
  }
}

class AboutUrlRowButtonWidget extends StatelessWidget {
  final void Function()? onTap;
  final String title;

  const AboutUrlRowButtonWidget({
    super.key,
    required this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: onTap,
      child: Padding(
        padding: verticalPadding6,
        child: Row(
          children: [
            MyText(
              title,
              fontSize: 10.sp,
              letterSpacing: 1.w,
              fontWeight: FontWeight.normal,
            ),
            horizontalMargin8,
            CustomSvgIcon(AppIcons.kArrowCircleUp)
          ],
        ),
      ),
    );
  }
}
