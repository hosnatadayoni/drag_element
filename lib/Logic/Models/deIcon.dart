import 'package:drag_element/Public/styles.dart';
import 'package:flutter/cupertino.dart';

class DeIconModel {
  IconData? icon;
  Color? iconColor;
  double? size;

  DeIconModel({
    required this.icon,
    required this.iconColor,
    this.size,
  });

  DeIconModel.fromJson(Map<String, dynamic> json) {
    icon = json['icon'];
    iconColor = json['iconColor'];
    size = json['size'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['icon'] = this.icon;
    data['iconColor'] = this.iconColor;
    data['size'] = this.size;
    return data;
  }
}
