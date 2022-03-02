// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

// 🌎 Project imports:
import 'package:blagger/core/app_controllers_tags.dart';
import 'package:blagger/data/controllers/blague_controller.dart';
import 'package:blagger/data/services/blague_service.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    BlagueController blagueController = Get.find(tag: AppControllersTag.blague);

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            GetBuilder<BlagueController>(
              tag: AppControllersTag.blague,
              builder: (ctrl) {
                return Text(
                  ctrl.blague.type,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 8.sp,
                  ),
                );
              },
            ),
            GetBuilder<BlagueController>(
              tag: AppControllersTag.blague,
              builder: (ctrl) {
                return Text(
                  ctrl.blague.joke,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                );
              },
            ),
            Divider(
              height: 2.5.h,
              color: Colors.transparent,
            ),
            GetBuilder<BlagueController>(
              tag: AppControllersTag.blague,
              builder: (ctrl) {
                return Text(
                  ctrl.blague.answer,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 15.sp,
                  ),
                );
              },
            ),
            GetBuilder<BlagueController>(
              tag: AppControllersTag.blague,
              builder: (ctrl) {
                return Text(
                  "#" + ctrl.blague.id.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 8.sp,
                  ),
                );
              },
            ),
            ElevatedButton(
              onPressed: () async {
                BlagueService blagueService = BlagueService();
                await blagueService.fetchBlague();
              },
              child: const Text("New blague"),
            ),
          ],
        ),
      ),
    );
  }
}
