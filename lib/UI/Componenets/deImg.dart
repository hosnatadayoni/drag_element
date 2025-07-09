import 'package:drag_element/Logic/Models/deImg.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DeImg extends StatelessWidget {
  DeImgModel ImgModel;
   DeImg({ required this.ImgModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: this.ImgModel.onClick==null?null:(){
        this.ImgModel.onClick!();
      },
      child:Center(
        child: Container(
            width: this.ImgModel.width,
            height: this.ImgModel.height,
            decoration: BoxDecoration(
                borderRadius:BorderRadius.circular(this.ImgModel.radius??0)
            ),
            child:ClipRRect(
              borderRadius: BorderRadius.circular(this.ImgModel.radius??0),
              child:
              this.ImgModel.path.split('.').last=='svg'?
              this.ImgModel.isNetwork?
              SvgPicture.network(this.ImgModel.path,color: this.ImgModel.color,fit: this.ImgModel.width==null || this.ImgModel.height==null?BoxFit.contain:BoxFit.fill):
              SvgPicture.asset(this.ImgModel.path,color: this.ImgModel.color,fit: this.ImgModel.width==null || this.ImgModel.height==null?BoxFit.contain:BoxFit.fill,) :
              this.ImgModel.isNetwork?
              Image.network(this.ImgModel.path,fit: this.ImgModel.width==null || this.ImgModel.height==null?BoxFit.contain:BoxFit.fill) :
              Image.asset(this.ImgModel.path,fit: this.ImgModel.width==null || this.ImgModel.height==null?BoxFit.contain:BoxFit.fill),
            )
        ),
      ),

    );
  }
}
