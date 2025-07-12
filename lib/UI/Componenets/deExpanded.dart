import 'package:drag_element/Logic/Models/deExpanded.dart';
import 'package:flutter/cupertino.dart';

class DeExpanded extends StatelessWidget {
  DeExpandedModel expandedModel;
  DeExpanded({required this.expandedModel});

  @override
  Widget build(BuildContext context) {
    return Expanded(child: this.expandedModel.child!);
  }
}
