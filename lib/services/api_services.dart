
import 'package:celebritygame_net/helpers/api_method.dart';
import 'package:celebritygame_net/model/nft_model.dart';
import 'package:celebritygame_net/utils/api_urls.dart';
import 'package:celebritygame_net/views/widget/toast/toast_message.dart';
import 'package:flutter/material.dart';

// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;

class ApiServices {
  static var client = http.Client();




  //nft Api get method
  static Future<NftModel?> nftApi() async {
    Map<String, dynamic>? mapResponse;
    try {
      mapResponse =
      await ApiMethod(isBasic: true).get(ApiUrls.nft, code: 200);
      if (mapResponse != null) {
        NftModel nftModel = NftModel.fromJson(mapResponse);
        // ToastMessage.success(dashboardModel.message.success.first.toString());
        return nftModel;
      }
    } catch (e) {
      debugPrint('err from history api service ==> $e');
      ToastMessage.error('Something went Wrong!');
      return null;
    }
    return null;
  }




}
