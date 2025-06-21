import 'package:expenso_expense_tracker/config/themes/units.dart';
import 'package:expenso_expense_tracker/domain/models/app_menu_section/currency/currency_model.dart';
import 'package:expenso_expense_tracker/generated/locale_keys.g.dart';
import 'package:expenso_expense_tracker/presentation/feature/app_menu_section/app_settings/bloc/app_settings_bloc.dart';
import 'package:expenso_expense_tracker/presentation/feature/app_menu_section/app_settings/bloc/app_settings_state.dart';
import 'package:expenso_expense_tracker/presentation/feature/app_menu_section/app_settings/pages/app_general_settings_page.dart';
import 'package:expenso_expense_tracker/presentation/feature/app_menu_section/app_settings/utils/extensions/splash_duration_type_enum_extension.dart';
import 'package:expenso_expense_tracker/presentation/feature/app_menu_section/app_settings/utils/local_data/currency_list.dart';
import 'package:expenso_expense_tracker/presentation/feature/app_menu_section/app_settings/widgets/splash_duration_selection_widget.dart';
import 'package:expenso_expense_tracker/presentation/widgets/custom_app_bar.dart';
import 'package:expenso_expense_tracker/presentation/widgets/my_text.dart';
import 'package:expenso_expense_tracker/shared/extensions/string_extensions.dart';
import 'package:expenso_expense_tracker/shared/helper_functions/bottom_sheet_helper.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart' show GetIt;

@RoutePage()
class AppCurrencySelectionPage extends StatelessWidget {
  static const id = '/appCurrencySelectionPage';
  AppCurrencySelectionPage({super.key});

  final appSettingsBloc = GetIt.I<AppSettingsBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomAppBar(
        title: LocaleKeys.selectCurrency.toLocalizeString,
      ),
      body: Column(
        children: [
          BlocSelector<AppSettingsBloc, AppSettingsState, CurrencyModel?>(
            bloc: appSettingsBloc,
            selector: (state) => state.selectedCurrency,
            builder: (context, currency) {
              return InkWell(
                onTap: () {
                  showCurrencySelectionBottomSheet(
                    context: context,
                    appSettingsBloc: appSettingsBloc,
                    selectedCurrency: currency,
                    onSelected: (newCurrency) {
                      appSettingsBloc.setCurrency(newCurrency);
                    },
                  );
                },
                child: Padding(
                  padding: horizontalPadding12,
                  child: SizedBox(
                    height: 60.h,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 4.h,
                      children: [
                        MyText(LocaleKeys.currencySelected.toLocalizeString, fontSize: 12.sp),
                        MyText(
                          currency != null ? '(${currency.symbol}) ${currency.name.toLocalizeString}' : '(₹) Rupee',
                          fontSize: 9.sp,
                          // fontColor: const Color(0xe2c49a6c),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

Future<void> showCurrencySelectionBottomSheet({
  required BuildContext context,
  required AppSettingsBloc appSettingsBloc,
  required CurrencyModel? selectedCurrency,
  required ValueChanged<CurrencyModel> onSelected,
}) {
  return ShowBottomSheet.draggableSheet(
    context: context,
    initialSize: 0.6.h,
    handleBottomPadding: 16.h,
    builder: (context, scrollController, _) {
      return CurrencySelectorWidget(
        scrollController: scrollController,
        onSelected: onSelected,
        appSettingsBloc: appSettingsBloc,
      );
    },
  );
}

class CurrencySelectorWidget extends StatelessWidget {
  const CurrencySelectorWidget({
    super.key,
    required this.scrollController,
    required this.onSelected,
    required this.appSettingsBloc,
  });

  final ScrollController scrollController;
  final ValueChanged<CurrencyModel> onSelected;
  final AppSettingsBloc appSettingsBloc;

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AppSettingsBloc, AppSettingsState, CurrencyModel?>(
      bloc: appSettingsBloc,
      selector: (state) => state.selectedCurrency,
      builder: (context, selectedCurrency) {
        // Default to rupee if not selected
        final defaultSelected = selectedCurrency ?? staticCurrencies.firstWhere((e) => e.code == 'INR');

        return ListView.separated(
          controller: scrollController,
          itemCount: staticCurrencies.length,
          separatorBuilder: (_, __) => Padding(
            padding: horizontalPadding12,
            child: Divider(height: 0.5, color: Colors.transparent),
          ),
          itemBuilder: (context, index) {
            final currency = staticCurrencies[index];
            final isSelected = defaultSelected.code == currency.code;

            return InkWell(
              onTap: () {
                if (!isSelected) {
                  onSelected(currency); // No pop
                }
              },
              child: Container(
                height: 60.h,
                alignment: Alignment.center,
                padding: horizontalPadding12,
                decoration: BoxDecoration(
                  color: isSelected ? const Color(0xffFFF8EE) : Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MyText(
                      currency.symbol,
                      fontSize: 12.sp,
                      letterSpacing: 0.5.w,
                      fontColor: isSelected ? const Color(0xffC49A6C) : null,
                    ),
                    const SizedBox(width: 8),
                    const Text("|", style: TextStyle(color: Colors.grey)),
                    const SizedBox(width: 8),
                    MyText(
                      currency.name.toLocalizeString,
                      fontSize: 12.sp,
                      letterSpacing: 0.5.w,
                      fontColor: isSelected ? const Color(0xffC49A6C) : null,
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }
}
