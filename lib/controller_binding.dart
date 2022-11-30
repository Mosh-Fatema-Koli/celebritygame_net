
import 'package:celebritygame_net/controlleter/nft_controller.dart';
import 'package:get/get.dart';

class ControllerBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(NftController());

  }
}
