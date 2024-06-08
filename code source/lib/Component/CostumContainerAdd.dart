import 'package:flutter/material.dart';

class CostumContainerAdd extends StatelessWidget {
  const CostumContainerAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 30,
      decoration: BoxDecoration(
      color: const Color.fromARGB(255, 44, 18, 52),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Center(child: Text("Add",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)),
    );
  }
}
