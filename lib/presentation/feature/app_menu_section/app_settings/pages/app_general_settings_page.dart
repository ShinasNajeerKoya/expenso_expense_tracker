import 'package:expenso_expense_tracker/config/themes/units.dart';
import 'package:expenso_expense_tracker/generated/locale_keys.g.dart';
import 'package:expenso_expense_tracker/presentation/feature/app_menu_section/app_settings/bloc/app_settings_bloc.dart';
import 'package:expenso_expense_tracker/presentation/feature/app_menu_section/app_settings/utils/extensions/splash_duration_type_enum_extension.dart';
import 'package:expenso_expense_tracker/presentation/feature/app_menu_section/app_settings/widgets/splash_disable_toggle_button_widget.dart';
import 'package:expenso_expense_tracker/presentation/feature/app_menu_section/app_settings/widgets/splash_duration_selection_widget.dart';
import 'package:expenso_expense_tracker/presentation/feature/app_menu_section/app_settings/widgets/splash_duration_selector_widget.dart';
import 'package:expenso_expense_tracker/presentation/widgets/custom_app_bar.dart';
import 'package:expenso_expense_tracker/presentation/widgets/my_text.dart';
import 'package:expenso_expense_tracker/shared/extensions/string_extensions.dart';
import 'package:expenso_expense_tracker/shared/helper_functions/bottom_sheet_helper.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
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
        title: LocaleKeys.appSettings.toLocalizeString,
      ),
      body: Column(
        children: [
          SplashDisableToggleButtonWidget(appSettingsBloc: appSettingsBloc),
          SplashDurationSelectionWidget(appSettingsBloc: appSettingsBloc),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: horizontalPadding12,
              child: SizedBox(
                height: 60.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(
                      LocaleKeys.statisticsDataSync.toLocalizeString,
                      fontSize: 12.sp,
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: horizontalPadding12,
              child: SizedBox(
                height: 60.h,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MyText(
                      LocaleKeys.downloadStatistics.toLocalizeString,
                      fontSize: 12.sp,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Future<void> showSplashDurationBottomSheet({
  required BuildContext context,
  required AppSettingsBloc appSettingsBloc,
  required ValueChanged<SplashDurationTypeEnum> onSelected,
}) {
  return ShowBottomSheet.draggableSheet(
    context: context,
    initialSize: 0.5.h,
    handleBottomPadding: 16.h,
    builder: (context, scrollController, _) {
      return SplashDurationSelectorWidget(
        scrollController: scrollController,
        onSelected: onSelected,
        appSettingsBloc: appSettingsBloc,
      );
    },
  );
}
