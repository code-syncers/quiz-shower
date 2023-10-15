![quizshower](https://github.com/code-syncers/quiz-shower/assets/84573152/f7684b63-8929-4f91-b48c-7bfbdffc308f)

# QuizShower

[![Build](https://github.com/code-syncers/quiz-shower/actions/workflows/build.yml/badge.svg)](https://github.com/code-syncers/quiz-shower/actions/workflows/build.yml)
[![codecov](https://codecov.io/gh/code-syncers/quiz-shower/graph/badge.svg?token=A2U6OFN6E0)](https://codecov.io/gh/code-syncers/quiz-shower)

## Prerequisites

### Flutter SDK

This project uses Flutter stable channel.

### Firebase

This project uses [Firebase](https://firebase.google.com). Please
install the latest version of [Firebase CLI](https://github.com/firebase/firebase-tools)
and [FlutterFire CLI](https://github.com/invertase/flutterfire_cli)
referencing [Firebase Documentation](https://firebase.google.com/docs/flutter/setup):

```shell
# Install Firebase CLI via npm
npm install -g firebase-tools

# Install FlutterFire CLI via dart pub
dart pub global activate flutterfire_cli
```

In debug mode, the [Firebase Local Emulator Suite](https://firebase.google.com/docs/emulator-suite) is used not to access the production environment.

### pnpm

This project uses [pnpm](https://pnpm.io) as a node package manager for Cloud Functions. Please install the latest version of pnpm:

```shell
# Using npm
npm install -g pnpm

# Using Homebrew
brew install pnpm

# Using Volta
volta install pnpm
```

For more information, please check [pnpm documentation](https://pnpm.io/installation).

## Development

### Run the app

You can start the app in debug mode by running the following commands in order:

```shell
# Start Firebase Emulator Suite
make serve

# Start Flutter in another terminal
make run
```

### Format / Analyze

You can format and analyze the code by running the following commands:

```shell
# Format
dart format lib test

# Analyze
flutter analyze
```
