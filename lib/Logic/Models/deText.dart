import 'dart:ui';
import 'package:flutter/cupertino.dart';

class DeTextModel {
  String? text;
  String? fontFamily;
  int? maxLine;
  double? fontSize;
  FontWeight? fontWeight;
  Color? color;
  TextOverflow? textOverflow;
  TextDecoration? textDecoration;
  TextAlign? textAlign;
  FontStyle? fontStyle;

  DeTextModel({
    required this.text,
    this.fontFamily,
    this.maxLine,
    this.fontSize,
    this.fontWeight,
    this.color,
    this.textOverflow,
    this.textDecoration,
    this.textAlign,
    this.fontStyle,
  });

  DeTextModel.fromJson(Map<String, dynamic> json) {
    text = json['text'];
    fontFamily = json['fontFamily'];
    maxLine = json['maxLine'];
    fontSize = json['fontSize'];
    fontWeight = json['fontWeight'];
    color = json['color'];
    textOverflow = json['textOverflow'];
    textDecoration = json['textDecoration'];
    textAlign = json['textAlign'];
    fontStyle = json['fontStyle'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['text'] = this.text;
    data['fontFamily'] = this.fontFamily;
    data['maxLine'] = this.maxLine;
    data['fontSize'] = this.fontSize;
    data['fontWeight'] = this.fontWeight;
    data['color'] = this.color;
    data['textOverflow'] = this.textOverflow;
    data['textDecoration'] = this.textDecoration;
    data['textAlign'] = this.textAlign;
    data['fontStyle'] = this.fontStyle;
    return data;
  }
}
