import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/models/add_card/add_card_model.dart';
import '../../presentation/add_card/pages/add_card_page.dart';
import '../../presentation/more_section/app_settings/pages/app_settings_page.dart';
import '../../presentation/home/pages/home_page.dart';
import '../../presentation/onboarding/pages/onboarding_page.dart';
import '../../presentation/more_section/profile/pages/profile_page.dart';

part 'route_config.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  AppRouter({super.navigatorKey});
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: OnboardingRoute.page, initial: true),
        AutoRoute(page: AppSettingsRoute.page),
        AutoRoute(page: HomeRoute.page),
        AutoRoute(page: AddCardRoute.page),
        // AutoRoute(page: AddCardRoute.page),
      ];
}
