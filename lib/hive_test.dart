/// Easily initialize a temporary [Hive] database for unit and widget tests.
library hive_test;

// 📦 Package imports:
import 'package:hive/hive.dart';

// 🌎 Project imports:
import 'src/get_temp_dir.dart';

/// Initializes a [Hive] in a temporary directory.
///
/// Be sure to run [tearDownTestHive] once your test has completed.
Future<void> setUpTestHive() async {
  final tempDir = await getTempDir();
  Hive.init(tempDir.path);
}

/// Deletes the temporary [Hive].
Future<void> tearDownTestHive() async {
  await Hive.deleteFromDisk();
}
