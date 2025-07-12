import 'package:flutter/material.dart';
class DeColumnContainer extends StatelessWidget {
  List<Widget> children;
  DeColumnContainer({required this.children});

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: children,
      ),
    );
  }
}
