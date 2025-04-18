import 'package:get/get.dart';
import 'package:urbanpro/app/routes/app_pages.dart';

class SplashPageController extends GetxController {
  @override
  void onInit() async {
    await Future.delayed(Duration(seconds: 3));
    Get.offAllNamed(Routes.HOME_PAGE);

    super.onInit();
  }
}
