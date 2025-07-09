import 'dart:ui';

class DeBtnModel {
  Function? onPressed;
  Color? backgroundColor;
  Color? foregroundColor;
  double? paddingTop;
  double? paddingBottom;
  double? paddingRight;
  double? paddingLeft;
  double? radius;
  String text;
  double? fontSize;

  DeBtnModel({
    this.onPressed,
    this.backgroundColor,
    this.foregroundColor,
    this.paddingTop,
    this.paddingBottom,
    this.paddingRight,
    this.paddingLeft,
    this.radius,
    required this.text,
    this.fontSize
  });

  factory DeBtnModel.fromJson(Map<String, dynamic> json) {
    return DeBtnModel(
      onPressed: json['onPressed'],
      backgroundColor: json['backgroundColor'] as Color,
      foregroundColor: json['foregroundColor'] as Color,
      paddingTop: json['paddingTop'] as double,
      paddingBottom: json['paddingBottom'] as double,
      paddingRight: json['paddingRight'] as double,
      paddingLeft: json['paddingLeft'] as double,
      text: json['text'] as String,
      fontSize: json['fontSize'] as double,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'backgroundColor': backgroundColor,
      'foregroundColor': foregroundColor,
      'paddingTop': paddingTop,
      'paddingBottom': paddingBottom,
      'paddingRight': paddingRight,
      'paddingLeft': paddingLeft,
      'text': text,
      'fontSize' : fontSize
    };
  }
}
