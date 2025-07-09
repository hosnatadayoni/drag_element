import 'package:drag_element/Logic/Models/deSizedBox.dart';
import 'package:flutter/material.dart';
class DeSizedBox extends StatelessWidget {
  DeSizedBoxModel SizedBoxModel;
   DeSizedBox({required this.SizedBoxModel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width:SizedBoxModel.width , height: SizedBoxModel.height,);
  }
}
