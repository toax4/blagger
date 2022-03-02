import 'package:blagger/data/bindings/base_bindings.dart';
import 'package:get/get.dart';
// Pages
import 'package:blagger/views/screens/home_page.dart';

part './app_routes.dart';

abstract class AppPages {
  static final List<GetPage> pages = [
    // Initial
    GetPage(
      name: AppRoutes.initial,
      page: () => const HomePage(),
      transition: Transition.native,
      bindings: [
        BaseBindings(),
      ],
    ),
    // GetPage(
    //   name: AppRoutes.splashscreen,
    //   page: () => const SplashScreen(),
    //   transition: Transition.native,
    //   bindings: [
    //     BaseBindings(),
    //   ],
    // )
  ];
}
