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
/// [AppSettingsPage]
class AppSettingsRoute extends PageRouteInfo<void> {
  const AppSettingsRoute({List<PageRouteInfo>? children})
      : super(AppSettingsRoute.name, initialChildren: children);

  static const String name = 'AppSettingsRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AppSettingsPage();
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
