import 'package:drag_element/Logic/Models/deIcon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class DeIcon extends StatelessWidget {
  DeIconModel iconModel;
  DeIcon({required this.iconModel});

  @override
  Widget build(BuildContext context) {
    return Icon(
      iconModel.icon,
      color: iconModel.iconColor,
      size: iconModel.size,
    );
  }
}
