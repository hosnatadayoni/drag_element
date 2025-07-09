import 'dart:ui';
import 'package:flutter/cupertino.dart';

class DeTextModel {
  String text;
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

  factory DeTextModel.fromJson(Map<String, dynamic> json) {
    return DeTextModel(
      text: json['text'] as String,
      fontFamily: json['fontFamily'] as String?,
      maxLine: json['maxLine'] as int?,
      fontSize: json['fontSize'] as double?,
      fontWeight: json['fontWeight'] as FontWeight?,
      color: json['color'] as Color?,
      textOverflow: json['textOverflow'] as TextOverflow?,
      textDecoration: json['textDecoration'] as TextDecoration?,
      textAlign: json['textAlign'] as TextAlign?,
      fontStyle: json['fontStyle'] as FontStyle?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'fontFamily': fontFamily,
      'maxLine': maxLine,
      'fontSize': fontSize,
      'fontWeight': fontWeight,
      'color': color,
      'textOverflow': textOverflow,
      'textDecoration': textDecoration,
      'textAlign': textAlign,
      'fontStyle': fontStyle,
    };
  }
}
