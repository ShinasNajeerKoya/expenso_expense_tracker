abstract class AppSettingsRepository {
/// Add your repository logic here
  Future<void> startAppSettings();

  Future<void> setLandingPageDisabled(bool value); // add this
  Future<bool> isLandingPageDisabled();
}
