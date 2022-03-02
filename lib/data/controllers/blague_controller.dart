// 🎯 Dart imports:

// 📦 Package imports:
import 'package:get/get.dart';

// 🌎 Project imports:
import 'package:blagger/data/models/blague.dart';
import 'package:blagger/data/services/blague_service.dart';
import 'package:blagger/main.dart';

class BlagueController extends GetxController {
  // Blague
  Rx<Blague> _blague = Rx(Blague());
  Blague get blague => _blague.value;
  set blague(Blague blague) {
    _blague = Rx(blague);

    update();
  }

  @override
  void onInit() async {
    logger.d("BlagueController - onInit");

    super.onInit();

    BlagueService blagueService = BlagueService();
    await blagueService.fetchBlague();
  }
}
