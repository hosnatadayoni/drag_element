import 'package:flutter/material.dart';
class DeRowContainer extends StatelessWidget {
  List<Widget> children;
  DeRowContainer({required this.children});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: children,
    );
  }
}
