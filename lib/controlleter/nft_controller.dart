



import 'package:celebritygame_net/model/nft_model.dart';
import 'package:celebritygame_net/services/api_services.dart';
import 'package:celebritygame_net/views/widget/logger/logger'
    '.dart';
import 'package:get/get.dart';

final log = logger(NftController);

class NftController extends GetxController {
  @override
  void onInit() {
    getNftData();
    super.onInit();
  }

// api process
  final _isLoading = false.obs;

  bool get isLoading => _isLoading.value;

  late NftModel _nftModel;

  NftModel get nftModel => _nftModel;

  // dashboard process function
  Future<NftModel> getNftData() async {
    _isLoading.value = true;
    update();

    // calling api from api service
    await ApiServices.nftApi().then((value) {
      _nftModel = value!;
      _isLoading.value = false;
      update();
    }).catchError((onError) {
      log.e(onError);
    });
    update();
    return _nftModel;
  }
}
