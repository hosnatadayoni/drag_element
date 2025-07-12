import 'package:drag_element/Logic/Models/deBtn.dart';
import 'package:drag_element/Logic/Models/deCenter.dart';
import 'package:drag_element/Logic/Models/deDivider.dart';
import 'package:drag_element/Logic/Models/deExpanded.dart';
import 'package:drag_element/Logic/Models/deIcon.dart';
import 'package:drag_element/Logic/Models/deImg.dart';
import 'package:drag_element/Logic/Models/deInput.dart';
import 'package:drag_element/Logic/Models/deSizedBox.dart';
import 'package:drag_element/Logic/Models/deStack.dart';
import 'package:drag_element/Logic/Models/deText.dart';
import 'package:drag_element/Public/images.dart';
import 'package:drag_element/UI/Componenets/deCenter.dart';
import 'package:drag_element/UI/Componenets/deContainer.dart';
import 'package:drag_element/UI/Componenets/deDivider.dart';
import 'package:drag_element/UI/Componenets/deExpanded.dart';
import 'package:drag_element/UI/Componenets/deIcon.dart';
import 'package:drag_element/UI/Componenets/deImg.dart';
import 'package:drag_element/UI/Componenets/deInput.dart';
import 'package:drag_element/UI/Componenets/deSizedBox.dart';
import 'package:drag_element/UI/Componenets/deStack.dart';
import 'package:drag_element/UI/Componenets/deText.dart';
import 'package:drag_element/UI/Views/test2.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../Componenets/deBtn.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DeContainer(
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.orange,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.yellow,
                  )
                ],
              ),
              DeSizedBox(
                  SizedBoxModel: DeSizedBoxModel(
                width: 80,
                height: 80,
              )),
              DeText(
                model: DeTextModel(
                  text: "test",
                  fontSize: 16,
                  color: Colors.green,
                ),
              ),
              DeInput(InputModel: DeInputModel()),
              DeSizedBox(
                  SizedBoxModel: DeSizedBoxModel(
                height: 80,
              )),
              DeInput(InputModel: DeInputModel(fontSize: 30)),
              DeSizedBox(
                  SizedBoxModel: DeSizedBoxModel(
                height: 80,
              )),
              DeImg(
                ImgModel: DeImgModel(path: imgeTest, radius: 20),
              ),
              // DeSizedBox(
              //     SizedBoxModel: DeSizedBoxModel(
              //   height: 80,
              // )),
              // DeImg(
              //   ImgModel: DeImgModel(
              //       path:
              //           'https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba',
              //       radius: 20,
              //       isNetwork: true,
              //       width: 50,
              //       height: 50),
              // ),
              DeSizedBox(
                  SizedBoxModel: DeSizedBoxModel(
                height: 80,
              )),
              DeDivider(
                driverModel: DeDividerModel(padding: 10),
              ),
              DeSizedBox(
                  SizedBoxModel: DeSizedBoxModel(
                height: 80,
              )),
              DeBtn(
                btnModel: DeBtnModel(
                  content: DeText(
                    model: DeTextModel(
                      text: "test",
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  radius: 5,
                  backgroundColor: Colors.red,
                  borderColor: Colors.red,
                ),
              ),
              DeSizedBox(
                  SizedBoxModel: DeSizedBoxModel(
                height: 20,
              )),
              DeIcon(
                iconModel: DeIconModel(
                  icon: Icons.beach_access,
                  iconColor: Colors.blue,
                ),
              ),
              DeSizedBox(
                  SizedBoxModel: DeSizedBoxModel(
                height: 20,
              )),
              DeCenter(
                centerModel: DeCenterModel(
                    child: Container(
                  width: 50,
                  height: 50,
                  color: Colors.yellow,
                )),
              ),
              DeSizedBox(
                  SizedBoxModel: DeSizedBoxModel(
                height: 20,
              )),
              DeStack(
                stackModel:
                    DeStackModel(alignment: Alignment.bottomLeft, children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.yellow,
                  ),
                  DeIcon(
                    iconModel: DeIconModel(
                      icon: Icons.beach_access,
                      iconColor: Colors.blue,
                    ),
                  ),
                ]),
              ),
              DeSizedBox(
                  SizedBoxModel: DeSizedBoxModel(
                height: 20,
              )),
              DeContainer(
                children: [
                  Container(
                    child: Center(
                      child: Text(
                        'First widget',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    color: Colors.blue,
                    height: 200,
                    width: 100,
                  ),
                  DeExpanded(
                    expandedModel: DeExpandedModel(
                      child: Container(
                        child: Center(
                          child: Text(
                            'Second widget',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        color: Colors.amber,
                        height: 200,
                      ),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        'Third widget',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                    color: Colors.pink,
                    height: 200,
                    width: 100,
                  ),
                ],
              ),
              DeSizedBox(
                  SizedBoxModel: DeSizedBoxModel(
                height: 20,
              )),
              DeBtn(
                btnModel: DeBtnModel(
                  content: DeText(
                    model: DeTextModel(
                      text: "go to test 2 page",
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () {
                    Get.to(() => Test2Page());
                  },
                  radius: 5,
                  backgroundColor: Colors.red,
                  borderColor: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
