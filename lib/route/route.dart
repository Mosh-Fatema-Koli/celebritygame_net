
import 'package:celebritygame_net/views/screen/Splash.dart';
import 'package:celebritygame_net/views/screen/nabbar.dart';
import 'package:get/get.dart';

const String splash = '/Splash_screen';
const String nav = '/Nav-screen';
//const String home = '/Home-screen';
//const String metaverse = '/metaverse-screen';
//const String game = '/game-screen';
//const String about = '/aouty-screen';
//const String regForm = '/reg-screen';
//const String drawer = '/menu-screen';

// control our page route flow

List<GetPage> getPages = [
  GetPage(
    name: splash,
    page: () => SplashPage(),
  ),
  GetPage(
    name: nav,
    page: () => NavPage(),
  ),
];
