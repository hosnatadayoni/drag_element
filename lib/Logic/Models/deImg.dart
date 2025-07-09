import 'dart:ui';

class DeImgModel{
  String path;
  double? width,height,radius;
  Color? color;
  Function? onClick;
  bool isNetwork;

  DeImgModel({
    required this.path,
    this.width,
    this.height,
    this.radius,
    this.color,
    this.onClick,
    this.isNetwork = false ,
});

  factory DeImgModel.fromJson(Map<String, dynamic> json) {
    return DeImgModel(
      path: json['path'] as String,
      width: json['width'] as double,
      height: json['height'] as double,
      radius: json['radius'] as double,
      color: json['color'] as Color,
      onClick: json['onClick'],
      isNetwork: json['isNetwork'] as bool
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'path': path,
      'width': width,
      'height': height,
      'radius': radius,
      'color' : color,
      'isNetwork' : isNetwork,
    };
  }

}
