import 'package:expenso_expense_tracker/generated/locale_keys.g.dart';
import 'package:expenso_expense_tracker/shared/extensions/string_extensions.dart';

enum SplashDurationTypeEnum {
  verySlow,
  slow,
  medium,
  fast,
  veryFast,
}

extension SplashDurationTypeEnumExtension on SplashDurationTypeEnum {
  String get displayName {
    switch (this) {
      case SplashDurationTypeEnum.verySlow:
        return LocaleKeys.snail.toLocalizeString;
      case SplashDurationTypeEnum.slow:
        return LocaleKeys.slow.toLocalizeString;
      case SplashDurationTypeEnum.medium:
        return LocaleKeys.medium.toLocalizeString;
      case SplashDurationTypeEnum.fast:
        return LocaleKeys.fast.toLocalizeString;
      case SplashDurationTypeEnum.veryFast:
        return LocaleKeys.veryFast.toLocalizeString;
    }
  }

  Duration get selectedDelay {
    switch (this) {
      case SplashDurationTypeEnum.verySlow:
        return const Duration(milliseconds: 1600);
      case SplashDurationTypeEnum.slow:
        return const Duration(milliseconds: 1300);
      case SplashDurationTypeEnum.medium:
        return const Duration(milliseconds: 900);
      case SplashDurationTypeEnum.fast:
        return const Duration(milliseconds: 600);
      case SplashDurationTypeEnum.veryFast:
        return const Duration(milliseconds: 400);
    }
  }
}
