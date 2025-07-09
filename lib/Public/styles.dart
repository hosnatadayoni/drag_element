import 'package:drag_element/Public/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const double maxItemWidth=900;
const double paddingSize=15;
const double borderSize=1;

const Color whiteColor=Color(0xffFFFFFF);
const Color itemColor = Color(0xffE9E9E9);

Map<int, Color> _primaryMap = {
  50: appColor.withOpacity(0.05),
  100: appColor.withOpacity(0.1),
  200: appColor.withOpacity(0.2),
  300: appColor.withOpacity(0.3),
  400: appColor.withOpacity(0.4),
  500: appColor.withOpacity(0.5),
  600: appColor.withOpacity(0.6),
  700: appColor.withOpacity(0.7),
  800: appColor.withOpacity(0.8),
  900: appColor.withOpacity(0.9),
};

MaterialColor primarySwatch = MaterialColor(Colors.blue[600]!.value, _primaryMap);


