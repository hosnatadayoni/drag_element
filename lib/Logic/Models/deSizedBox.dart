class DeSizedBoxModel {
  double? width;
  double? height;

  DeSizedBoxModel({this.width, this.height});

  DeSizedBoxModel.fromJson(Map<String, dynamic> json) {
    width = json['width'];
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['width'] = this.width;
    data['height'] = this.height;
    return data;
  }
}
