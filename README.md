# hive_test

Initialize a temporary Hive database for testing

[![style: very good analysis](https://img.shields.io/badge/style-very_good_analysis-B22C89.svg)](https://pub.dev/packages/very_good_analysis)
[![Gitmoji](https://img.shields.io/badge/gitmoji-%20😜%20😍-FFDD67.svg)](https://gitmoji.dev/)
[![Pub Version](https://img.shields.io/pub/v/hive_test)](https://pub.dev/packages/hive_test)
![GitHub](https://img.shields.io/github/license/netsells/hive_test)
![GitHub Workflow Status](https://img.shields.io/github/workflow/status/netsells/hive_test/Test)
[![Coverage Status](https://coveralls.io/repos/github/netsells/hive_test/badge.svg?branch=master)](https://coveralls.io/github/netsells/hive_test?branch=master)

## 🚀 Installation

Install from [pub.dev](https://pub.dev/packages/hive_test):

```yaml
dev_dependencides:
  hive_test: ^1.0.1
```

## 🔨 Usage

In your test's `setUp` method, simply run:

```dart
setUp(() async {
  await setUpTestHive();
});
```

Then, in the `tearDown` method:

```dart
tearDown(() async {
  await tearDownTestHive();
});
```

Under the hood, this is a real instance of `Hive`. So you can open boxes, perform read/write transactions etc just as you would in an app!

## 👨🏻‍💻 Authors

- [@ptrbrynt](https://www.github.com/ptrbrynt) at [Netsells](https://netsells.co.uk/)
