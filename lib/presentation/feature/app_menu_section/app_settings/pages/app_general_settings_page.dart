import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:expenso_expense_tracker/config/themes/colors.dart';
import 'package:expenso_expense_tracker/config/themes/units.dart';
import 'package:expenso_expense_tracker/presentation/feature/app_menu_section/app_settings/bloc/app_settings_bloc.dart';
import 'package:expenso_expense_tracker/presentation/feature/app_menu_section/app_settings/bloc/app_settings_state.dart';
import 'package:expenso_expense_tracker/presentation/feature/app_menu_section/app_settings/utils/extensions/splash_duration_type_enum_extension.dart';
import 'package:expenso_expense_tracker/presentation/feature/app_menu_section/app_settings/widgets/splash_disable_toggle_button_widget.dart';
import 'package:expenso_expense_tracker/presentation/widgets/custom_app_bar.dart';
import 'package:expenso_expense_tracker/presentation/widgets/my_text.dart';
import 'package:expenso_expense_tracker/shared/helper_functions/bottom_sheet_helper.dart';
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
      body: Column(
        children: [
          SplashDisableToggleButtonWidget(appSettingsBloc: appSettingsBloc),
          BlocSelector<AppSettingsBloc, AppSettingsState, SplashDurationTypeEnum>(
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
          )
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
      return _SplashDurationSelector(
        scrollController: scrollController,
        onSelected: onSelected,
        appSettingsBloc: appSettingsBloc,
      );
    },
  );
}

class _SplashDurationSelector extends StatelessWidget {
  const _SplashDurationSelector({
    required this.scrollController,
    required this.onSelected,
    required this.appSettingsBloc,
  });

  final ScrollController scrollController;
  final ValueChanged<SplashDurationTypeEnum> onSelected;
  final AppSettingsBloc appSettingsBloc;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AppSettingsBloc, AppSettingsState, SplashDurationTypeEnum>(
      bloc: appSettingsBloc,
      selector: (state) => state.splashDuration,
      builder: (context, selectedDuration) {
        return ListView.separated(
          controller: scrollController,
          itemCount: SplashDurationTypeEnum.values.length,
          separatorBuilder: (_, __) => Padding(
            padding: horizontalPadding12,
            child: Divider(height: 0.5, color: Colors.transparent),
          ),
          itemBuilder: (context, index) {
            final value = SplashDurationTypeEnum.values[index];
            final isSelected = selectedDuration == value;

            return InkWell(
              onTap: () {
                if (!isSelected) {
                  onSelected(value);
                }
              },
              child: Container(
                height: 60.h,
                alignment: Alignment.center,
                padding: horizontalPadding12,
                decoration: BoxDecoration(
                  color: isSelected ? const Color(0xffFFF8EE) : Colors.white,
                ),
                child: MyText(
                  value.displayName,
                  fontSize: 12.sp,
                  letterSpacing: 0.5.w,
                  fontColor: isSelected ? const Color(0xffC49A6C) : null,
                ),
              ),
            );
          },
        );
      },
    );
  }
}
