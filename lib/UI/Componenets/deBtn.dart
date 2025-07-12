import 'package:drag_element/Logic/Models/deBtn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeBtn extends StatelessWidget {
  DeBtnModel btnModel;

  DeBtn({required this.btnModel});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: btnModel.disabled!
          ? null
          : () {
              if (this.btnModel.onPressed != null) {
                this.btnModel.onPressed!();
              }
            },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (btnModel.disabled!) {
              return btnModel.backgroundColor != null
                  ? btnModel.backgroundColor!.withOpacity(0.6)
                  : Colors.transparent;
            }
            if (states.contains(MaterialState.hovered)) {
              return btnModel.borderColor ??
                  btnModel.backgroundColor ??
                  Colors.transparent;
            }
            return btnModel.backgroundColor ?? Colors.transparent;
          },
        ),
        elevation: MaterialStateProperty.all(0),
        side: MaterialStateProperty.all(
          BorderSide(
              color: btnModel.disabled!
                  ? btnModel.borderColor != null
                      ? btnModel.borderColor!.withOpacity(0.6)
                      : Colors.transparent
                  : btnModel.borderColor ?? Colors.transparent,
              width: 1),
        ),
        padding: MaterialStateProperty.all(
          EdgeInsets.only(
            top: btnModel.paddingTop ?? 0,
            bottom: btnModel.paddingBottom ?? 0,
            right: btnModel.paddingRight ?? 0,
            left: btnModel.paddingLeft ?? 0,
          ),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(btnModel.radius ?? 0),
          ),
        ),
      ),
      child: this.btnModel.content,
    );
  }
}
// class DeBtn extends StatelessWidget {
//   DeBtnModel btnModel;
//
//   DeBtn({required this.btnModel});
//
//   @override
//   Widget build(BuildContext context) {
//     return MouseRegion(
//       onEnter: (_) {},
//       onExit: (_) {},
//       child: InkWell(
//         onTap: () {
//           if (this.btnModel.onPressed != null) {
//             this.btnModel.onPressed!();
//           }
//         },
//         child: Container(
//           padding: EdgeInsets.only(
//               top: this.btnModel.paddingTop ?? 0,
//               bottom: this.btnModel.paddingBottom ?? 0,
//               right: this.btnModel.paddingRight ?? 0,
//               left: this.btnModel.paddingLeft ?? 0),
//           decoration: BoxDecoration(
//             color: this.btnModel.backgroundColor,
//             borderRadius:
//             BorderRadius.all(Radius.circular(this.btnModel.radius ?? 0)),
//             border: Border.all(color: this.btnModel.borderColor!, width: 1),
//           ),
//           child: this.btnModel.content,
//         )
//       ),
//     );
//   }
// }
