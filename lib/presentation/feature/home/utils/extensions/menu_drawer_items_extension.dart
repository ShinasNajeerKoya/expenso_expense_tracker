import 'package:auto_route/auto_route.dart';
import 'package:expenso_expense_tracker/core/routes/route_config.dart';
import 'package:expenso_expense_tracker/generated/app_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../pages/home_page.dart';

enum DrawerItem {
  profile,
  account,
  language,
  currency,
  settings,
  about,
}

extension DrawerItemExtension on DrawerItem {
  String get label {
    switch (this) {
      case DrawerItem.profile:
        return 'Profile';
      case DrawerItem.account:
        return 'Account';
      case DrawerItem.language:
        return 'Language';
      case DrawerItem.currency:
        return 'Currency';
      case DrawerItem.settings:
        return 'Settings';
      case DrawerItem.about:
        return 'About';
    }
  }

  String get icon {
    switch (this) {
      case DrawerItem.profile:
        return AppIcons.kProfile;
      case DrawerItem.account:
        return AppIcons.kAccounts;
      case DrawerItem.language:
        return AppIcons.kLanguage;
      case DrawerItem.currency:
        return AppIcons.kCurrency;
      case DrawerItem.settings:
        return AppIcons.kSettings;
      case DrawerItem.about:
        return AppIcons.kAbout;
    }
  }

  void handleNavigation(BuildContext context) {
    switch (this) {
      case DrawerItem.profile:
        context.pushRoute(ProfileRoute());
        break;
      case DrawerItem.account:
        context.pushRoute(AppAccountsRoute());
        break;
      case DrawerItem.language:
        context.pushRoute(AppLanguageSelectionRoute());
        break;
      case DrawerItem.currency:
        context.pushRoute(AppCurrencySelectionRoute());
        break;
      case DrawerItem.settings:
        context.pushRoute(AppGeneralSettingsRoute());
        break;
      case DrawerItem.about:
        context.pushRoute(AppAboutRoute());
        break;
    }
  }
}
