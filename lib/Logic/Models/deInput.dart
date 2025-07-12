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

  DeInputModel.fromJson(Map<String, dynamic> json) {
    lable = json['lable'];
    hint = json['hint'];
    width = json['width'];
    height = json['height'];
    lines = json['lines'];
    radius = json['radius'];
    icon1 = json['icon1'];
    icon2 = json['icon2'];
    onChange = json['onChange'];
    onTap = json['onTap'];
    fontSize = json['fontSize'];
    fillColor = json['fillColor'];
    hintColor = json['hintColor'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lable'] = this.lable;
    data['hint'] = this.hint;
    data['width'] = this.width;
    data['height'] = this.height;
    data['lines'] = this.lines;
    data['radius'] = this.radius;
    data['icon1'] = this.icon1;
    data['icon2'] = this.icon2;
    data['fontSize'] = this.fontSize;
    data['fillColor'] = this.fillColor;
    data['hintColor'] = hintColor;
    return data;
  }
}
