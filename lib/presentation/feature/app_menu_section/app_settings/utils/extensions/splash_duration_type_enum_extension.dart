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
        return 'Snail';
      case SplashDurationTypeEnum.slow:
        return 'Slow';
      case SplashDurationTypeEnum.medium:
        return 'Medium';
      case SplashDurationTypeEnum.fast:
        return 'Fast';
      case SplashDurationTypeEnum.veryFast:
        return 'Fast as F';
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
