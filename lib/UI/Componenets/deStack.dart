import 'package:drag_element/Logic/Models/deStack.dart';
import 'package:flutter/cupertino.dart';

class DeStack extends StatelessWidget {
  DeStackModel stackModel;

  DeStack({required this.stackModel});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: stackModel.alignment!,
      children: stackModel.children!,
    );
  }
}
