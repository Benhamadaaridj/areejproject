import 'package:flutter/material.dart';
import 'package:prj_1/Component/Constant.dart';

class CustomC extends StatelessWidget {
  final String tes;
  const CustomC({super.key, required this.tes});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 127,
      height: 43,
      decoration: BoxDecoration(
        color:Color.fromARGB(0, 60, 41, 60),
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(child: Text(tes,style: TextStyle(fontSize: 16,color: Colors.white),)),
    );
  }
}
