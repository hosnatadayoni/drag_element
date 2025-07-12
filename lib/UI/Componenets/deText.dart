import 'package:drag_element/Logic/Models/deText.dart';
import 'package:flutter/material.dart';

class DeText extends StatelessWidget {
  DeTextModel model;

  DeText({
    required this.model,
  });

  @override
  Widget build(BuildContext context) {
    return model.maxLine != null || model.textOverflow != null
        ? Container(
            child: Row(
              children: [
                Expanded(child: getText()),
              ],
            ),
          )
        : getText();
  }

  Widget getText() {
    return Text(
      model.text!,
      style: TextStyle(
          fontFamily: model.fontFamily,
          fontSize: model.fontSize,
          fontWeight: model.fontWeight,
          color: model.color,
          decoration: model.textDecoration,
          fontStyle: model.fontStyle),
      textAlign: model.textAlign,
      maxLines: model.maxLine,
      overflow: model.textOverflow,
    );
  }
}
