import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:expenso_expense_tracker/config/themes/colors.dart';
import 'package:expenso_expense_tracker/config/themes/units.dart';
import 'package:expenso_expense_tracker/generated/locale_keys.g.dart';
import 'package:expenso_expense_tracker/presentation/feature/app_menu_section/app_settings/bloc/app_settings_bloc.dart';
import 'package:expenso_expense_tracker/presentation/feature/app_menu_section/app_settings/bloc/app_settings_state.dart';
import 'package:expenso_expense_tracker/presentation/widgets/my_text.dart';
import 'package:expenso_expense_tracker/shared/extensions/string_extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashDisableToggleButtonWidget extends StatelessWidget {
  const SplashDisableToggleButtonWidget({
    super.key,
    required this.appSettingsBloc,
  });

  final AppSettingsBloc appSettingsBloc;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: horizontalPadding12,
      child: SizedBox(
        height: 60.h,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyText(
              LocaleKeys. disableLandingPage.toLocalizeString,
              fontSize: 12.sp,
            ),
            BlocSelector<AppSettingsBloc, AppSettingsState, bool>(
              bloc: appSettingsBloc,
              selector: (state) => state.landingPageDisabled,
              builder: (context, isEnabled) {
                return AnimatedToggleSwitch<bool>.dual(
                  current: isEnabled,
                  first: false,
                  second: true,
                  spacing: -4.w,
                  style: ToggleStyle(
                    borderColor: AppColors.kTransparent,
                    backgroundColor: Color(0xffFFF7EE),
                  ),
                  borderWidth: 5.w,
                  height: 22.h,
                  onChanged: (val) => appSettingsBloc.toggleLandingPage(val),
                  indicatorSize: Size.fromRadius(8.r),
                  styleBuilder: (b) => ToggleStyle(
                    indicatorColor: isEnabled ? Color(0xff885B2B) : Colors.grey,
                    borderRadius: BorderRadius.circular(30.r),
                    indicatorBorderRadius: BorderRadius.circular(100.r),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
