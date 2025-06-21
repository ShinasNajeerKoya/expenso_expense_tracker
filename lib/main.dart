import 'dart:core';

import 'package:easy_localization/easy_localization.dart';
import 'package:expenso_expense_tracker/core/routes/route_config.dart';
import 'package:expenso_expense_tracker/presentation/feature/app_menu_section/app_settings/bloc/app_settings_bloc.dart';
import 'package:expenso_expense_tracker/presentation/feature/app_menu_section/app_settings/bloc/app_settings_state.dart';
import 'package:expenso_expense_tracker/presentation/feature/onboarding/pages/onboarding_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'config/themes/fonts.dart';
import 'core/di/dependency_injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  GetItHelper.init();

  runApp(
    EasyLocalization(
      path: 'assets/languages',
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('kn', 'IN'),
        Locale('ml', 'IN'),
        Locale('ta', 'IN'),
        Locale('te', 'IN'),
        Locale('hi', 'IN'),
        Locale('es', 'ES'),
        Locale('de', 'DE')
      ],
      fallbackLocale: const Locale('en', 'US'),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final AppRouter _appRouter = getIt<AppRouter>();

  @override
  Widget build(BuildContext context) {
    final currentLocale = context.locale;
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          title: 'Flutter Demo',
          theme: ThemeData(
            textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme).apply(fontSizeFactor: 1.sp),
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: currentLocale,
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
        );
      },
    );
  }
}
