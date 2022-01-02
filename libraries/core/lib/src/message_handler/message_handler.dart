import 'package:core/src/res/app_colors.dart';
import 'package:flutter/material.dart';

class MessageHandler {
  MessageHandler();

  static var scaffoldMessengerKey = GlobalKey<ScaffoldMessengerState>();

  static void showSnackBar({@required String? title}) {
    scaffoldMessengerKey.currentState!.hideCurrentSnackBar();
    scaffoldMessengerKey.currentState!.showSnackBar(SnackBar(
      content: Text(title!),
      backgroundColor: AppColors.primaryColor,
      duration: const Duration(seconds: 3),
    ));
  }
}
