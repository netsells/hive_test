// 📦 Package imports:
import 'package:flutter_test/flutter_test.dart';
import 'package:hive/hive.dart';

// 🌎 Project imports:
import 'package:hive_test/hive_test.dart';

void main() {
  test('initializing, using, and closing a test Hive works', () async {
    await setUpTestHive();

    final box = await Hive.openBox<int>('testBox');

    await box.add(1);

    await box.clear();

    await tearDownTestHive();

    await setUpTestHive();

    final box2 = await Hive.openBox<int>('testBox');

    await box2.add(1);

    await box2.clear();

    await tearDownTestHive();
  });
}
