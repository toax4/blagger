// 📦 Package imports:
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';

class BlagueProvider extends GetConnect {
  @override
  void onInit() {
    httpClient.baseUrl = dotenv.env["URL_API"] ?? "";
    httpClient.addRequestModifier((Request request) async {
      request.headers["Authorization"] = dotenv.env["API_KEY"] ?? "";
      return request;
    });
  }

  Future<Response> fetchBlague() async {
    print("BlagueProvider - fetchBlague");

    return get(
      "/api/random",
    );
  }
}
