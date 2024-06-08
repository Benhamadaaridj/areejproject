import 'package:flutter/material.dart';
import 'package:prj_1/Component/Constant.dart';

class CustomContainerFisrt extends StatelessWidget {
  final String text;
  final String imgpath;
  const CustomContainerFisrt({super.key, required this.text, required this.imgpath});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 170,
      decoration: BoxDecoration(
      
        border: Border.all(color: Colors.black),
        color: ConColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [Text(text,style: const TextStyle(fontSize: 24,fontWeight: FontWeight.bold,fontFamily: 'outfit'),),
        const SizedBox(height:15 ),
         Image.asset(imgpath,width: 100,)],
      ),
    );
  }
}
