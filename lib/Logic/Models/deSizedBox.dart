class DeSizedBoxModel {
  double? width;
  double? height;


  DeSizedBoxModel({
     this.width,
     this.height
  });

  factory DeSizedBoxModel.fromJson(Map<String, dynamic> json) {
    return DeSizedBoxModel(
      width: json['width'] as double,
      height: json['height'] as double,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'width': width,
      'height': height,
    };
  }
}