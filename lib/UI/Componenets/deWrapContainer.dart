import 'package:flutter/material.dart';
class DeWrapContainer extends StatelessWidget {
  List<Widget> children;
  DeWrapContainer({required this.children});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: children,
    );
  }
}