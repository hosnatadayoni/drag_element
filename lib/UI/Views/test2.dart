import 'package:drag_element/Logic/Models/deCenter.dart';
import 'package:drag_element/Logic/Models/deIcon.dart';
import 'package:drag_element/Logic/Models/deSizedBox.dart';
import 'package:drag_element/Logic/Models/deText.dart';
import 'package:drag_element/UI/Componenets/deCenter.dart';
import 'package:drag_element/UI/Componenets/deContainer.dart';
import 'package:drag_element/UI/Componenets/deIcon.dart';
import 'package:drag_element/UI/Componenets/deSizedBox.dart';
import 'package:drag_element/UI/Componenets/deText.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Test2Page extends StatelessWidget {
  const Test2Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DeCenter(
          centerModel: DeCenterModel(
              child: SingleChildScrollView(
        child: Column(
          children: [
            IntrinsicWidth(
              child: Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.green),
                ),
                child: DeCenter(
                  centerModel: DeCenterModel(
                    child: DeText(
                      model: DeTextModel(
                        text: "aaaaaaaaaaaaaaaaaaaaaaa",
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            DeSizedBox(
                SizedBoxModel: DeSizedBoxModel(
              height: 50,
            )),
            IntrinsicWidth(
              child: Container(
                padding:
                    EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.green),
                ),
                child: DeCenter(
                  centerModel: DeCenterModel(
                    child: DeText(
                      model: DeTextModel(
                        text:
                            "Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum,Lorem ipsum dolor sit amet., comes from a line in section 1.10.32",
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            DeSizedBox(
                SizedBoxModel: DeSizedBoxModel(
              height: 50,
            )),
            IntrinsicWidth(
              child: Container(
                  padding:
                      EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.green),
                  ),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          for (var i = 0; i < 5; i++)
                            Container(
                              margin: EdgeInsets.only(left: 10),
                              child: DeIcon(
                                iconModel: DeIconModel(
                                  icon: Icons.star,
                                  iconColor: Colors.blue,
                                ),
                              ),
                            ),
                        ],
                      ),
                      DeSizedBox(
                          SizedBoxModel: DeSizedBoxModel(
                        width: 20,
                      )),
                      DeText(
                        model: DeTextModel(
                          text: "aaaaaaaaaaaaaaaaaaaaaaa",
                          fontSize: 16,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  )),
            ),
            DeSizedBox(
                SizedBoxModel: DeSizedBoxModel(
              height: 50,
            )),
            IntrinsicWidth(
              child: Container(
                  padding:
                      EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1, color: Colors.green),
                  ),
                  child: Wrap(
                    children: [
                      for (var i = 0; i < 5; i++)
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: Column(
                            children: [
                              DeIcon(
                                iconModel: DeIconModel(
                                  icon: Icons.beach_access,
                                  iconColor: Colors.blue,
                                ),
                              ),
                              DeSizedBox(
                                  SizedBoxModel: DeSizedBoxModel(
                                    height: 50,
                                  )),
                              DeText(
                                model: DeTextModel(
                                  text: "testTTTTTTT",
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                              DeSizedBox(
                                  SizedBoxModel: DeSizedBoxModel(
                                    height: 50,
                                  )),
                              DeText(
                                model: DeTextModel(
                                  text: "25 MIN",
                                  fontSize: 16,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                    ],
                  )),
            ),
          ],
        ),
      ))),
    );
  }
}
