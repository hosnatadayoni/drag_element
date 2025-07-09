import 'package:drag_element/Logic/Models/deInput.dart';
import 'package:drag_element/Logic/Models/deSizedBox.dart';
import 'package:drag_element/Logic/Models/deText.dart';
import 'package:drag_element/UI/Componenets/deContainer.dart';
import 'package:drag_element/UI/Componenets/deInput.dart';
import 'package:drag_element/UI/Componenets/deSizedBox.dart';
import 'package:drag_element/UI/Componenets/deText.dart';
import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
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
          ],
        ),
      ),
    );
  }
}
