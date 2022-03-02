import 'package:blagger/core/app_storages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AppService {
  GetStorage appStorage = GetStorage(AppStorages.app);

  void changeTheme(bool modeSombre) {
    print(modeSombre);
    saveTheme(modeSombre);
    Get.changeThemeMode(getTheme());
  }

  void saveTheme(bool modeSombre) {
    appStorage.write(AppStorages.modeSombre, modeSombre);
  }

  ThemeMode getTheme() {
    return loadTheme() ? ThemeMode.dark : ThemeMode.light;
  }

  bool loadTheme() {
    // appStorage.remove(AppStorages.modeSombre);
    if (appStorage.hasData(AppStorages.modeSombre)) {
      return appStorage.read(AppStorages.modeSombre);
    }
    return false;
  }
}
