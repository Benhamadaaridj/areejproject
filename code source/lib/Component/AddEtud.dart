import 'package:flutter/material.dart';

class AddEtud extends StatelessWidget {
  final String Function(String?) valid;
  final TextEditingController mycontrolle;
  final String text;

  const AddEtud(
      {super.key,
      required this.valid,
      required this.mycontrolle,
      required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: SizedBox(
        width: 350,
        child: TextFormField(
          controller: mycontrolle,
          validator: valid,
          textInputAction: TextInputAction.done,
          decoration: InputDecoration(
              hintText: text,
              hintStyle:
                  const TextStyle(fontSize: 19,color: Colors.black, fontWeight: FontWeight.w600),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide: BorderSide(
                        color: Colors.black,  ))),
        ),
      ),
    );
  }
}
