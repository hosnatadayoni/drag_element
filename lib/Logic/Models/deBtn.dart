import 'dart:ui';
import 'package:flutter/cupertino.dart';

class DeBtnModel {
  Function? onPressed;
  Color? backgroundColor;
  Color? borderColor;
  double? paddingTop;
  double? paddingBottom;
  double? paddingRight;
  double? paddingLeft;
  double? radius;
  Widget? content;
  bool? disabled;

  DeBtnModel({
    this.onPressed,
    this.backgroundColor,
    this.borderColor,
    this.paddingTop,
    this.paddingBottom,
    this.paddingRight,
    this.paddingLeft,
    this.radius,
    required this.content,
    this.disabled = false,
  });

  DeBtnModel.fromJson(Map<String, dynamic> json) {
    onPressed = json['onPressed'];
    backgroundColor = json['backgroundColor'];
    borderColor = json['borderColor'];
    paddingTop = json['paddingTop'];
    paddingBottom = json['paddingBottom'];
    paddingRight = json['paddingRight'];
    paddingLeft = json['paddingLeft'];
    radius = json['radius'];
    content = json['content'];
    disabled = json['disabled'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['backgroundColor'] = this.backgroundColor;
    data['borderColor'] = this.borderColor;
    data['paddingTop'] = this.paddingTop;
    data['paddingBottom'] = this.paddingBottom;
    data['paddingRight'] = this.paddingRight;
    data['paddingLeft'] = this.paddingLeft;
    data['radius'] = this.radius;
    data['content'] = this.content;
    data['disabled'] = this.disabled;
    return data;
  }
}
