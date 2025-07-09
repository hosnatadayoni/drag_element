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

  factory DeDividerModel.fromJson(Map<String, dynamic> json) {
    return DeDividerModel(
      padding: json['padding'] as double,
      color: json['color'] as Color,
      height: json['height'] as double,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'padding': padding,
      'color': color,
      'height': height,
    };
  }
}
