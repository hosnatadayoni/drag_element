import 'package:flutter/cupertino.dart';

class DeStackModel {
  List<Widget>? children;
  AlignmentGeometry? alignment;

  DeStackModel({required this.children, this.alignment = Alignment.topRight});

  DeStackModel.fromJson(Map<String, dynamic> json) {
    children = json['children'];
    alignment = json['alignment'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['children'] = this.children;
    data['alignment'] = this.alignment;
    return data;
  }
}
