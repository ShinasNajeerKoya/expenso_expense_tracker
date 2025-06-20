import 'package:easy_localization/easy_localization.dart';
import 'package:expenso_expense_tracker/config/themes/units.dart';
import 'package:expenso_expense_tracker/generated/locale_keys.g.dart';
import 'package:expenso_expense_tracker/presentation/widgets/custom_app_bar.dart';
import 'package:expenso_expense_tracker/presentation/widgets/my_text.dart';
import 'package:expenso_expense_tracker/shared/extensions/string_extensions.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

import '../bloc/app_settings_bloc.dart';
import '../bloc/app_settings_state.dart';
import '../utils/extensions/app_language_enum_extension.dart';

@RoutePage()
class AppLanguageSelectionPage extends StatelessWidget {
  static const id = '/appLanguageSelectionPage';

  AppLanguageSelectionPage({super.key});

  final appSettingsBloc = GetIt.I<AppSettingsBloc>();

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AppSettingsBloc, AppSettingsState, Locale>(
      bloc: appSettingsBloc,
      selector: (state) => state.selectedLocale,
      builder: (context, selectedLocale) {
        final selectedLanguage = AppLanguageEnumExtension.fromLocale(selectedLocale);

        return Scaffold(
          backgroundColor: Colors.white,
          appBar: CustomAppBar(
            title: LocaleKeys.appSettings.toLocalizeString,
          ),
          body: ListView.separated(
            itemCount: AppLanguageEnum.values.length,
            separatorBuilder: (_, __) => Divider(
              height: 0.5,
              color: Colors.transparent,
            ),
            itemBuilder: (context, index) {
              final language = AppLanguageEnum.values[index];
              final isSelected = language == selectedLanguage;

              return InkWell(
                onTap: () async {
                  await context.setLocale(language.locale);
                  appSettingsBloc.setAppLocale(language.locale);
                },
                child: Container(
                  height: 60.h,
                  padding: horizontalPadding12,
                  decoration: BoxDecoration(
                    color: isSelected ? const Color(0xffFFF8EE) : Colors.white,
                  ),
                  alignment: Alignment.centerLeft,
                  child: MyText(
                    language.displayName,
                    fontSize: 12.sp,
                    fontColor: isSelected ? const Color(0xffC49A6C) : null,
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
