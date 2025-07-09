import 'package:drag_element/Logic/Controllers/main-controller.dart';
import 'package:drag_element/UI/Componenets/deColumnContainer.dart';
import 'package:drag_element/UI/Componenets/deRowContainer.dart';
import 'package:flutter/material.dart';

class DeContainer extends StatelessWidget {
  double? minWidth;
  double? maxWidth;
  List<Widget> children;

  DeContainer({
    this.minWidth,
    this.maxWidth,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    MainController.loadJson();
    String type = MainController.getType(size.width) ?? 'row';
    var backgroundColor = MainController.getBackgrounColor(size.width) ?? null;
    double paddingTop = MainController.getPaddingTop(size.width);
    double paddingBottom = MainController.getPaddingBotom(size.width);
    double paddingLeft = MainController.getPaddingLeft(size.width);
    double paddingRight = MainController.getPaddingRight(size.width);
    Widget result;
    switch (type) {
      case 'row':
        result = Container(
            padding: EdgeInsets.only(
                top: paddingTop,
                bottom: paddingBottom,
                left: paddingLeft,
                right: paddingRight),
            color: backgroundColor != null
                ? MainController.fromHex(backgroundColor)
                : null,
            child: DeRowContainer(children: children));
      case 'column':
        result = Container(
            padding: EdgeInsets.only(
                top: paddingTop,
                bottom: paddingBottom,
                left: paddingLeft,
                right: paddingRight),
            color: backgroundColor != null
                ? MainController.fromHex(backgroundColor)
                : null,
            child: DeColumnContainer(children: children));
      case 'container':
        result = Container(
            padding: EdgeInsets.only(
                top: paddingTop,
                bottom: paddingBottom,
                left: paddingLeft,
                right: paddingRight),
            color: backgroundColor != null
                ? MainController.fromHex(backgroundColor)
                : null,
            child: Container(width: 50, height: 50, color: Colors.red));
      default:
        result = Container(
            padding: EdgeInsets.only(
                top: paddingTop,
                bottom: paddingBottom,
                left: paddingLeft,
                right: paddingRight),
            color: backgroundColor != null
                ? MainController.fromHex(backgroundColor)
                : null,
            child: DeRowContainer(children: children));
    }
    return result;
  }
}
