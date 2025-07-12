import 'package:drag_element/Logic/Models/deCenter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeCenter extends StatelessWidget {
  DeCenterModel centerModel;
  DeCenter({required this.centerModel});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: this.centerModel.child,
    );
  }
}
