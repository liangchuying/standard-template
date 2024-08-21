import 'package:flutter_easyloading/flutter_easyloading.dart';

class EasyLoadingTool {
  static showError(String message) {
    EasyLoading.showError(message);
  }

  static showInfo(String message) {
    EasyLoading.showInfo(message);
  }

  static showSuccess(String message) {
    EasyLoading.showSuccess(message);
  }
}