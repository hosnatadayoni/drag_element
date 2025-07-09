import 'package:drag_element/Logic/Models/deInput.dart';
import 'package:drag_element/Public/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeInput extends StatefulWidget {
  DeInputModel InputModel;

  DeInput({required this.InputModel});

  @override
  State<DeInput> createState() => _DeInputState();
}

class _DeInputState extends State<DeInput> {
  final TextEditingController _textController = TextEditingController();
  final _focusNode = new FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNode.addListener(() {
      if (_focusNode.hasFocus) {
        _textController.text = _textController.text + '';
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (WidgetsBinding.instance.window.viewInsets.bottom == 0 &&
        FocusManager.instance.primaryFocus != null) {
      FocusManager.instance.primaryFocus!.unfocus();
    }
    var size = MediaQuery.of(context).size;
    return Container(
      height: widget.InputModel.lines == 1
          ? this.widget.InputModel.height ?? null
          : null,
      width: this.widget.InputModel.width ?? size.width,
      alignment: Alignment.center,
      child: TextFormField(
        onTap: () {
          if (widget.InputModel.onTap != null) widget.InputModel.onTap!();
        },
        style: TextStyle(color: widget.InputModel.hintColor , fontSize:widget.InputModel.fontSize),
        // autofocus: widget.isFocused == true ? true : false,
        focusNode: _focusNode,
        minLines: widget.InputModel.lines,
        maxLines: widget.InputModel.lines,
        textDirection: TextDirection.rtl,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.only(
            top: (widget.InputModel.lines ?? 1) > 1 ? 30 : 10,
            right: 10,
            left: 10,
          ),
          filled: true,
          fillColor: widget.InputModel.fillColor,
          prefixIcon:
              widget.InputModel.icon1 != null ? widget.InputModel.icon1 : null,
          suffixIcon:
              widget.InputModel.icon2 != null ? widget.InputModel.icon2 : null,
          // errorBorder: widget.hasBorder? OutlineInputBorder(
          //   borderSide: BorderSide(color: Colors.transparent,width: borderSize),
          //   borderRadius: BorderRadius.circular(widget.radius!),
          // ):InputBorder.none,
          enabledBorder: OutlineInputBorder(
            borderSide:
                BorderSide(color: Colors.transparent, width: borderSize),
            borderRadius: BorderRadius.circular(widget.InputModel.radius ?? 0),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.InputModel.radius ?? 0),
            borderSide:
                BorderSide(color: Colors.transparent, width: borderSize),
          ),
          // floatingLabelStyle:TextStyle(color: itemColor13),
          // labelStyle: AppController.fontStyle(fontTypes.text5, itemColor3),
          alignLabelWithHint: true,
          labelText: widget.InputModel.lable,
          hintText: widget.InputModel.hint,
          hintStyle: TextStyle(
            fontSize: widget.InputModel.fontSize,
            // fontWeight: FontWeight.w300,
          ),
        ),
        keyboardType: TextInputType.text,
        // inputFormatters: <TextInputFormatter>[
        //   if(widget.isMobile)
        //     LengthLimitingTextInputFormatter(11),
        //   widget.isNumber?FilteringTextInputFormatter.digitsOnly:
        //   FilteringTextInputFormatter.singleLineFormatter,
        // ],
        onChanged: (text) {
          if (widget.InputModel.onChange != null)
            widget.InputModel.onChange!(text);
        },
      ),
    );
  }
}
