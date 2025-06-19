import 'package:expenso_expense_tracker/config/themes/units.dart';
import 'package:expenso_expense_tracker/presentation/feature/app_menu_section/app_settings/bloc/app_settings_bloc.dart';
import 'package:expenso_expense_tracker/presentation/feature/app_menu_section/app_settings/bloc/app_settings_state.dart';
import 'package:expenso_expense_tracker/presentation/feature/app_menu_section/app_settings/pages/app_general_settings_page.dart';
import 'package:expenso_expense_tracker/presentation/feature/app_menu_section/app_settings/utils/extensions/splash_duration_type_enum_extension.dart';
import 'package:expenso_expense_tracker/presentation/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashDurationSelectionWidget extends StatelessWidget {
  const SplashDurationSelectionWidget({
    super.key,
    required this.appSettingsBloc,
  });

  final AppSettingsBloc appSettingsBloc;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AppSettingsBloc, AppSettingsState, SplashDurationTypeEnum>(
      bloc: appSettingsBloc,
      selector: (state) => state.splashDuration,
      builder: (context, splashDuration) {
        return InkWell(
          onTap: () {
            showSplashDurationBottomSheet(
              context: context,
              appSettingsBloc: appSettingsBloc,
              onSelected: (value) {
                appSettingsBloc.setSplashDuration(value);
              },
            );
          },
          child: Padding(
            padding: horizontalPadding12,
            child: SizedBox(
              height: 60.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyText(
                    'Splash Duration',
                    fontSize: 12.sp,
                  ),
                  Padding(
                    padding: rightPadding8,
                    child: MyText(
                      splashDuration.displayName,
                      fontSize: 9.sp,
                      fontColor: const Color(0xe2c49a6c),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
