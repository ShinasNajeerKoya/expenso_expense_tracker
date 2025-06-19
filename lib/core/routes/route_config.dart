import 'package:auto_route/auto_route.dart';
import 'package:expenso_expense_tracker/presentation/feature/app_menu_section/app_settings/pages/app_about_page.dart';
import 'package:expenso_expense_tracker/presentation/feature/app_menu_section/app_settings/pages/app_accounts_page.dart';
import 'package:expenso_expense_tracker/presentation/feature/app_menu_section/app_settings/pages/app_currency_selection_page.dart';
import 'package:expenso_expense_tracker/presentation/feature/app_menu_section/app_settings/pages/app_language_selection_page.dart';
import 'package:flutter/material.dart';

import '../../domain/models/add_card/add_card_model.dart';
import '../../presentation/feature/add_card/pages/add_card_page.dart';
import '../../presentation/feature/app_menu_section/app_settings/pages/app_general_settings_page.dart';
import '../../presentation/feature/home/pages/home_page.dart';
import '../../presentation/feature/onboarding/pages/onboarding_page.dart';
import '../../presentation/feature/app_menu_section/profile/pages/profile_page.dart';

part 'route_config.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  AppRouter({super.navigatorKey});
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: OnboardingRoute.page, initial: true),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: AddCardRoute.page),
        ...settingsRoutes,

        // AutoRoute(page: AddCardRoute.page),
      ];
}

List<AutoRoute> settingsRoutes = [
  AutoRoute(page: ProfileRoute.page),
  AutoRoute(page: AppGeneralSettingsRoute.page),
  AutoRoute(page: AppAboutRoute.page),
  AutoRoute(page: AppAccountsRoute.page),
  AutoRoute(page: AppCurrencySelectionRoute.page),
  AutoRoute(page: AppLanguageSelectionRoute.page),
];
