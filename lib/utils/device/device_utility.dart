import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
}