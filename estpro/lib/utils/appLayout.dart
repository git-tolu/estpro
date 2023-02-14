import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AppLayout {
  static getScreenHeight() {
    return Get.height;
  }

  static getScreenWidth() {
    return Get.width;
  }

  static GetHeight(double pixels) {
    double x = getScreenHeight() / pixels;
    return getScreenHeight() / x;
  }

  static GetWidth(double pixels) {
    double x = getScreenWidth() / pixels;
    return getScreenWidth() / x;
  }
}
