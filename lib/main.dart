import 'package:blagger/core/app.dart';
import 'package:blagger/core/app_storages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  await dotenv.load(fileName: ".env");

  await GetStorage.init(AppStorages.app);
  await GetStorage.init(AppStorages.session);

  runApp(const App());
}
