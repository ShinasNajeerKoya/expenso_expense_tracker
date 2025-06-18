import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../generated/app_icons.dart';
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
        Navigator.pushNamed(context, '/profile');
        break;
      case DrawerItem.account:
        Navigator.pushNamed(context, '/account');
        break;
      case DrawerItem.language:
        Navigator.pushNamed(context, '/language');
        break;
      case DrawerItem.currency:
        Navigator.pushNamed(context, '/currency');
        break;
      case DrawerItem.settings:
        Navigator.pushNamed(context, '/settings');
        break;
      case DrawerItem.about:
        Navigator.pushNamed(context, '/about');
        break;
    }
  }
}
