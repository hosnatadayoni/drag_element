import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  static List<dynamic> responsiveList = [];

  static Future<void> loadJson() async {
    String jsonFileString;
    jsonFileString = await rootBundle.loadString('assets/config.json');
    responsiveList = json.decode(jsonFileString)['responsive'];
  }

  static getType(var size) {
    for (var r in responsiveList) {
      if (size > r['min'] && size < r['max']) {
        return r['type'];
      }
    }
  }

  static getBackgrounColor(var size) {
    for (var r in responsiveList) {
      if (size > r['min'] && size < r['max']) {
        return r['backgroundColor'];
      }
    }
  }

  static double getPaddingTop(var size) {
    for (var r in responsiveList) {
      if (size > r['min'] && size < r['max']) {
        if (r['top'] != null) {
          return double.parse('${r['top']}');
        }
      }
    }
    return 0.0;
  }

  static double getPaddingBotom(var size) {
    for (var r in responsiveList) {
      if (size > r['min'] && size < r['max']) {
        if (r['bottom'] != null) {
          return double.parse('${r['bottom']}');
        }
      }
    }
    return 0.0;
  }

  static double getPaddingLeft(var size) {
    for (var r in responsiveList) {
      if (size > r['min'] && size < r['max']) {
        if (r['left'] != null) {
          return double.parse('${r['left']}');
        }
      }
    }
    return 0.0;
  }

  static double getPaddingRight(var size) {
    for (var r in responsiveList) {
      if (size > r['min'] && size < r['max']) {
        if (r['right'] != null) {
          return double.parse('${r['right']}');
        }
      }
    }
    return 0.0;
  }

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
