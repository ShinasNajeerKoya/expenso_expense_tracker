import 'package:expenso_expense_tracker/config/themes/units.dart';
import 'package:expenso_expense_tracker/presentation/feature/app_menu_section/app_settings/bloc/app_settings_bloc.dart';
import 'package:expenso_expense_tracker/presentation/feature/app_menu_section/app_settings/bloc/app_settings_state.dart';
import 'package:expenso_expense_tracker/presentation/feature/app_menu_section/app_settings/utils/extensions/splash_duration_type_enum_extension.dart';
import 'package:expenso_expense_tracker/presentation/widgets/my_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashDurationSelectorWidget extends StatelessWidget {
  const SplashDurationSelectorWidget({super.key,
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
