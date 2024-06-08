import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController mycontroller;

  final bool obc;
  final String? hint;
  final String? Function(String?)? validator;
  final Icon icc;

  const CustomTextFormField(
      {super.key,
      required this.mycontroller,
      required this.obc,
      this.hint,
      this.validator, required this.icc});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(14),
        child: SizedBox(
          width: 350,
          child: TextFormField(
            validator: validator,
            controller: mycontroller,
            obscureText: obc,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              prefixIcon: icc,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              hintText: hint,
              labelStyle: const TextStyle(
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                  fontSize: 20),
                  
            ),
          ),
        ));
  }
}
