import 'package:flutter/material.dart';
import 'package:prj_1/Component/Constant.dart';

class CustomSecondContainer extends StatelessWidget {
  final void Function()? ontap;
  final String path;
  final String Ctext;
  const CustomSecondContainer(
      {super.key, required this.path, required this.Ctext, this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 200,
        width: 170,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          color: ConColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            SizedBox(height: 20),
            Image.asset(
              path,
              width: 100,
            ),
            SizedBox(height: 20),
            Container(
              height: 2,
              width: 178,
              decoration: BoxDecoration(border: Border.all(color: Colors.black)),
            ),
            SizedBox(height: 10),
            Text(
              Ctext,
              style: TextStyle(fontSize: 24, fontFamily: 'aladin'),
            ),
          ],
        ),
      ),
    );
  }
}
