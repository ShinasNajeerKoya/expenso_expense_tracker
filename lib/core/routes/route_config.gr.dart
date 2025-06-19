// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'route_config.dart';

/// generated route for
/// [AddCardPage]
class AddCardRoute extends PageRouteInfo<AddCardRouteArgs> {
  AddCardRoute({
    Key? key,
    AddCardModel? existingCard,
    List<PageRouteInfo>? children,
  }) : super(
          AddCardRoute.name,
          args: AddCardRouteArgs(key: key, existingCard: existingCard),
          initialChildren: children,
        );

  static const String name = 'AddCardRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AddCardRouteArgs>(
        orElse: () => const AddCardRouteArgs(),
      );
      return AddCardPage(key: args.key, existingCard: args.existingCard);
    },
  );
}

class AddCardRouteArgs {
  const AddCardRouteArgs({this.key, this.existingCard});

  final Key? key;

  final AddCardModel? existingCard;

  @override
  String toString() {
    return 'AddCardRouteArgs{key: $key, existingCard: $existingCard}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AddCardRouteArgs) return false;
    return key == other.key && existingCard == other.existingCard;
  }

  @override
  int get hashCode => key.hashCode ^ existingCard.hashCode;
}

/// generated route for
/// [AppAboutPage]
class AppAboutRoute extends PageRouteInfo<void> {
  const AppAboutRoute({List<PageRouteInfo>? children})
      : super(AppAboutRoute.name, initialChildren: children);

  static const String name = 'AppAboutRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AppAboutPage();
    },
  );
}

/// generated route for
/// [AppAccountsPage]
class AppAccountsRoute extends PageRouteInfo<void> {
  const AppAccountsRoute({List<PageRouteInfo>? children})
      : super(AppAccountsRoute.name, initialChildren: children);

  static const String name = 'AppAccountsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AppAccountsPage();
    },
  );
}

/// generated route for
/// [AppCurrencySelectionPage]
class AppCurrencySelectionRoute extends PageRouteInfo<void> {
  const AppCurrencySelectionRoute({List<PageRouteInfo>? children})
      : super(AppCurrencySelectionRoute.name, initialChildren: children);

  static const String name = 'AppCurrencySelectionRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AppCurrencySelectionPage();
    },
  );
}

/// generated route for
/// [AppGeneralSettingsPage]
class AppGeneralSettingsRoute
    extends PageRouteInfo<AppGeneralSettingsRouteArgs> {
  AppGeneralSettingsRoute({Key? key, List<PageRouteInfo>? children})
      : super(
          AppGeneralSettingsRoute.name,
          args: AppGeneralSettingsRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'AppGeneralSettingsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AppGeneralSettingsRouteArgs>(
        orElse: () => const AppGeneralSettingsRouteArgs(),
      );
      return AppGeneralSettingsPage(key: args.key);
    },
  );
}

class AppGeneralSettingsRouteArgs {
  const AppGeneralSettingsRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'AppGeneralSettingsRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AppGeneralSettingsRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [AppLanguageSelectionPage]
class AppLanguageSelectionRoute extends PageRouteInfo<void> {
  const AppLanguageSelectionRoute({List<PageRouteInfo>? children})
      : super(AppLanguageSelectionRoute.name, initialChildren: children);

  static const String name = 'AppLanguageSelectionRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AppLanguageSelectionPage();
    },
  );
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
      : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomePage();
    },
  );
}

/// generated route for
/// [OnboardingPage]
class OnboardingRoute extends PageRouteInfo<OnboardingRouteArgs> {
  OnboardingRoute({Key? key, List<PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          args: OnboardingRouteArgs(key: key),
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OnboardingRouteArgs>(
        orElse: () => const OnboardingRouteArgs(),
      );
      return OnboardingPage(key: args.key);
    },
  );
}

class OnboardingRouteArgs {
  const OnboardingRouteArgs({this.key});

  final Key? key;

  @override
  String toString() {
    return 'OnboardingRouteArgs{key: $key}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! OnboardingRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
      : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfilePage();
    },
  );
}

/// generated route for
/// [SplashPage]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
      : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SplashPage();
    },
  );
}
