import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  

  const CustomButton({
    Key? key,
    required this.onPressed,
    required this.text,
    
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 44, 18, 52),
          
        borderRadius: BorderRadius.circular(20),
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(color: Colors.white,fontSize: 15),
        ),
      ),
    );
  }
}
