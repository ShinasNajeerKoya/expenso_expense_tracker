app:
	flutter clean; \
	flutter pub get; \
	cd ios && pod deintegrate && pod install --repo-update; \
	cd ..; \
	flutter build apk; \
	cd build/app/outputs/flutter-apk && open .



feature:
	fvm flutter pub run tool/feature_generator.dart

br:
	dart run build_runner clean
	dart run build_runner build --delete-conflicting-outputs


pipeline:
	@echo "🧹 Cleaning Flutter project..."
	flutter clean

	@echo "📦 Getting Flutter dependencies..."
	flutter pub get

	@echo "🔧 Reinstalling CocoaPods..."
	cd ios && pod deintegrate && pod install --repo-update

	@echo "📌 Committing and pushing to ci/release-builds..."
	git add .
	git commit -m "Trigger release build pipeline"
	git push origin ci/release-builds






clean-build-base:
	flutter clean;\
	flutter pub get;\
	cd ios;\
	pod cache clean --all ;\
	pod install --repo-update;\


generate-text-local:
	dart run easy_localization:generate -S "assets/languages" -o "locale_keys.g.dart" -f keys;\

manual-generate:
	flutter pub get;\
	dart run easy_localization:generate -S "assets/languages" -o "locale_keys.g.dart" -f keys;\
	dart run build_runner build --delete-conflicting-outputs ;\


### use this when firebase options available and run locally
generate-dev-build:
	flutter build apk --release -t lib/main.dart;\

generate-prod-build:
#//todo: run firebase options here
	flutter build apk --release -t lib/main.dart;\

#//todo: need to write for github apk generation, use firebase token passing