import 'package:drag_element/Logic/Models/deDivider.dart';
import 'package:flutter/cupertino.dart';

class DeDivider extends StatelessWidget {
  DeDividerModel driverModel;

  DeDivider({required this.driverModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: this.driverModel.height,
      color: this.driverModel.color,
      margin: EdgeInsets.only(
          left: driverModel.padding ?? 0.0, right: driverModel.padding ?? 0.0),
    );
  }
}
