// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import 'package:blagger/core/app_controllers_tags.dart';
import 'package:blagger/data/controllers/blague_controller.dart';

class BaseBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => BlagueController(), tag: AppControllersTag.blague);
  }
}
