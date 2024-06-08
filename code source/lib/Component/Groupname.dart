import 'package:flutter/material.dart';

class GroupName extends StatelessWidget {
  final String name;
  const GroupName({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(width: 304, height: 97, 
    decoration:  BoxDecoration(
      color:  const Color.fromARGB(255, 44, 18, 52),
      borderRadius: BorderRadius.circular(20),
    ),
    child:  Center(
      child: Text(name,style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
      fontSize: 36,fontFamily: 'aladin'),),
    )
    
    );
  }
}
