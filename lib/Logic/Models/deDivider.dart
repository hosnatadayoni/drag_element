import 'dart:ui';
import 'package:drag_element/Public/styles.dart';

class DeDividerModel {
  double? padding = 0;
  Color? color;
  double? height;

  DeDividerModel({
    this.padding,
    this.color = itemColor,
    this.height = 1,
  });

   DeDividerModel.fromJson(Map<String, dynamic> json) {
      padding =  json['padding'];
      color =  json['color'];
      height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
       data['padding'] =  this.padding;
      data['color'] = this.color;
      data['height'] =  this.height;
    return data;
  }
}
