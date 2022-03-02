// 🎯 Dart imports:

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import 'package:blagger/core/app_controllers_tags.dart';
import 'package:blagger/data/controllers/blague_controller.dart';
import 'package:blagger/data/models/blague.dart';
import 'package:blagger/data/providers/blague_provider.dart';
import '../../main.dart';

class BlagueService {
  Future<bool> fetchBlague() async {
    logger.d("BlagueService - fetchBlague");

    BlagueProvider pBlague = BlagueProvider();
    pBlague.onInit();

    Response res = await pBlague.fetchBlague();
    if (!res.isOk) {
      return false;
    }

    Blague blague = Blague.fromMap(res.body);

    BlagueController blagueController = Get.find(tag: AppControllersTag.blague);
    blagueController.blague = blague;

    return true;
  }
}
