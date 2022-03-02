// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_storage/get_storage.dart';
import 'package:logger/logger.dart';

// 🌎 Project imports:
import 'package:blagger/core/app.dart';
import 'package:blagger/core/app_storages.dart';

var logger = Logger(
  printer: PrettyPrinter(),
);

Future<void> main() async {
  await dotenv.load(fileName: ".env");

  await GetStorage.init(AppStorages.app);
  await GetStorage.init(AppStorages.session);

  runApp(const App());
}
