import 'package:flutter/cupertino.dart';

class DeInputModel {
  String? lable, hint;
  double? width;
  double? height;
  int? lines;
  double? radius;
  Widget? icon1, icon2;
  Function? onChange;
  Function? onTap;
  double? fontSize;
  Color? fillColor;
  Color? hintColor;

  DeInputModel({
    this.lable,
    this.hint,
    this.width,
    this.height,
    this.lines,
    this.radius,
    this.icon1,
    this.icon2,
    this.onChange,
    this.onTap,
    this.fontSize,
    this.fillColor,
    this.hintColor,
  });

  factory DeInputModel.fromJson(Map<String, dynamic> json) {
    return DeInputModel(
      lable: json['lable'] as String,
      hint: json['hint'] as String,
      width: json['width'] as double,
      height: json['height'] as double,
      lines: json['lines'] as int,
      radius: json['radius'] as double,
      icon1: json['icon1'],
      icon2: json['icon2'],
      onChange: json['onChange'],
      onTap: json['onTap'],
      fontSize: json['fontSize'],
      fillColor: json['fillColor'] as Color,
      hintColor:  json['hintColor'] as Color,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'lable': lable,
      'hint': hint,
      'width': width,
      'height': height,
      'lines': lines,
      'radius': radius,
      'icon1': icon1,
      'icon2': icon2,
      'fontSize' : fontSize,
      'fillColor' : fillColor,
      'hintColor' : hintColor,

    };
  }
}
