pub :
	flutter pub get

build :
	flutter packages pub run build_runner build --delete-conflicting-outputs

watch :
	flutter packages pub run build_runner watch --delete-conflicting-outputs

run-dev :
	flutter run --target lib/main/main_dev.dart

run-prod :
	flutter run --target lib/main/main_prod.dart

first-start :
	flutter analyze
	$(MAKE) pub
	$(MAKE) build
	$(MAKE) run-dev
