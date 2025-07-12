import 'dart:ui';

class DeImgModel {
  String? path;
  double? width, height, radius;
  Color? color;
  Function? onClick;
  bool? isNetwork;

  DeImgModel({
    required this.path,
    this.width,
    this.height,
    this.radius,
    this.color,
    this.onClick,
    this.isNetwork = false,
  });

  DeImgModel.fromJson(Map<String, dynamic> json) {
    path = json['path'];
    width = json['width'];
    height = json['height'];
    radius = json['radius'];
    color = json['color'];
    onClick = json['onClick'];
    isNetwork = json['isNetwork'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['path'] = path;
    data['width'] = width;
    data['height'] = height;
    data['radius'] = radius;
    data['color'] = color;
    data['isNetwork'] = isNetwork;
    return data;
  }
}
