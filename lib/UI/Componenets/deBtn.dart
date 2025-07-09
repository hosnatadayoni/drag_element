import 'package:drag_element/Logic/Models/deBtn.dart';
import 'package:drag_element/Logic/Models/deText.dart';
import 'package:drag_element/UI/Componenets/deText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeBtn extends StatelessWidget {
  DeBtnModel btnModel;

  DeBtn({required this.btnModel});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
       if(this.btnModel.onPressed != null){
         this.btnModel.onPressed!();
       }
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: this.btnModel.backgroundColor,
        foregroundColor: this.btnModel.foregroundColor,
        padding: EdgeInsets.only(
            top: this.btnModel.paddingTop ?? 0,
            bottom: this.btnModel.paddingBottom ?? 0,
            right: this.btnModel.paddingRight ?? 0,
            left: this.btnModel.paddingLeft ?? 0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(this.btnModel.radius ?? 0),
        ),
      ),
      child: DeText(
        model: DeTextModel(
          text: this.btnModel.text,
          fontSize:this.btnModel.fontSize ,
        ),
      ),
    );
  }
}
