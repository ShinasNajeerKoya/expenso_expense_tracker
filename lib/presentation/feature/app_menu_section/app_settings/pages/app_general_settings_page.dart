import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:expenso_expense_tracker/config/themes/colors.dart';
import 'package:expenso_expense_tracker/config/themes/units.dart';
import 'package:expenso_expense_tracker/presentation/feature/app_menu_section/app_settings/bloc/app_settings_bloc.dart';
import 'package:expenso_expense_tracker/presentation/feature/app_menu_section/app_settings/bloc/app_settings_state.dart';
import 'package:expenso_expense_tracker/presentation/widgets/custom_app_bar.dart';
import 'package:expenso_expense_tracker/presentation/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

@RoutePage()
class AppGeneralSettingsPage extends StatelessWidget {
  static const id = '/appGeneralSettingsPage';
  AppGeneralSettingsPage({super.key});

  final appSettingsBloc = GetIt.I<AppSettingsBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: "App Settings",
      ),
      body: Padding(
        padding: horizontalPadding12,
        child: Column(
          children: [
            SizedBox(
              height: 52.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyText(
                    'Disable landing page',
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
            )
          ],
        ),
      ),
    );
  }
}
