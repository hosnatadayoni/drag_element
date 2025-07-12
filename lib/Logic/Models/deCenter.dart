import 'package:flutter/cupertino.dart';

class DeCenterModel {
  Widget? child;

  DeCenterModel({required this.child});

  DeCenterModel.fromJson(Map<String, dynamic> json) {
    child = json['child'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['child'] = this.child;
    return data;
  }
}
