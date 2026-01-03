import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class TDeviceUtils {
  static void hideKeyboard(BuildContext context){
    FocusScope.of(context).requestFocus(FocusNode());
  }
  static Future<void>setStatusBarColor(Color color)async {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUIOverlayStyle(statusBarColor:color)
    );
  }
  static bool isLandscapeOrientation(BuildContext context){
    final viewInserts = View.of(context).viewInsets;
    return viewInserts.bottom == 0;
  }
  static bool isPortraitOrientation(BuildContext context){
    final viewInserts = View.of(context).viewInsets;
    return viewInserts.bottom != 0;
  }
  static void setFullScreen(bool enable){
    SystemChrome.setEnabledSystemUIMode(enable ? SystemUiMode.immersiveSticky :SystemUiMode.edgeToEdge);
  }
  static double getScreenHeight(){
    return MediaQuery.of(Get.context!).size.height;
  }
  static double getScreenWidth(BuildContext context){
    return MediaQuery.of(context).size.width;
  }
  static double getPixelRatio(){
    return MediaQuery.of(Get.context!).devicePixelRatio;
  }
  static double getStatusBarHeight(){
    return MediaQuery.of(Get.context!).padding.top;
  }
  static double getBottomNavigationBarHeight(){
    return kBottomNavigationBarHeight;
  }
  static double getAppBarHeight(){
    return kToolbarHeight;
  }
  static double getKeyboardHeight(){
    final viewInserts = MediaQuery.of(Get.context!).viewInsets;
    return viewInserts.bottom ;
  }
   static Future<bool> isKeyboardHeight() async{
    final viewInserts = View.of(Get.context!).viewInsets;
    return viewInserts.bottom > 0;
  }
  static Future<bool> isPhysicalDevice() async{
    return defaultTargetPlatform == TargetPlatform.android || defaultTargetPlatform == TargetPlatform.iOS;
  }
  static void vibrate(Duration duration){
    HapticFeedback.vibrate();
    Future.delayed(duration , () => HapticFeedback.vibrate());
  }
  static Future<void> setPreferredOrientations(List<DeviceOrientation>orietation) async{
    await SystemChrome.setPreferredOrientations(orietation);
  }
  static void hideStatusBar(){
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: []);
  }
}