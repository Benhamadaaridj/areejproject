import 'package:flutter/material.dart';
import 'package:prj_1/Component/CustomC.dart';

class CustomMenu extends StatelessWidget {
  const CustomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 362,
      height: 65,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(10),

      ),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Row(
          children: [
            CustomC(tes: "All groups",),
            SizedBox(width: 5),
            CustomC(tes: "All")
        
          ],
        
        
        ),
      ),
    );
  }
}