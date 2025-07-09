import 'package:flutter/material.dart';
class DeColumnContainer extends StatelessWidget {
  List<Widget> children;
  DeColumnContainer({required this.children});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: children,
    );
  }
}
