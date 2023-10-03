functions_deps:
	cd functions && pnpm install

functions_format: functions_deps
	cd functions && pnpm run format:check

functions_lint: functions_format
	cd functions && pnpm run lint

functions_build: functions_lint
	cd functions &&	pnpm run build

emulators_start: functions_build
	firebase emulators:start

serve: functions_deps functions_format functions_lint functions_build emulators_start

flutter_clean:
	flutter clean

flutter_deps: flutter_clean
	flutter pub get

flutter_format: flutter_deps
	dart format lib test --set-exit-if-changed

flutter_analyze: flutter_format
	flutter analyze

flutter_run: flutter_analyze
	flutter run

run: flutter_clean flutter_deps flutter_format flutter_analyze flutter_run
