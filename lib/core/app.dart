// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

// 🌎 Project imports:
import 'package:blagger/core/app_themes.dart';
import 'package:blagger/core/routes/app_pages.dart';
import 'package:blagger/data/bindings/base_bindings.dart';
import 'package:blagger/data/services/app_service.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          initialBinding: BaseBindings(),
          smartManagement: SmartManagement.onlyBuilder,
          defaultTransition: Transition.rightToLeft,
          theme: AppThemes.light,
          darkTheme: AppThemes.dark,
          themeMode: AppService().getTheme(),
          debugShowCheckedModeBanner:
              (dotenv.env["ENV"] == "prod") ? false : true,
          initialRoute: AppRoutes.home,
          getPages: AppPages.pages,
          onInit: () {},
          onReady: () {},
          routingCallback: (Routing? routing) {},
          onUnknownRoute: (RouteSettings route) {},
        );
      },
    );
  }
}
