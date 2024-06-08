import 'package:flutter/material.dart';

Future<String?> showTextDialog(
  BuildContext context, {
  required String title,
  required String value,
}) => showDialog<String>(
  context: context,
  builder: (context) => AlertDialog(
    title: Text(title),
    content: TextField(
      controller: TextEditingController()..text = value,
      decoration: InputDecoration(
        hintText: 'Enter value',
      ),
    ),
    actions: [
      TextButton(
        onPressed: () => Navigator.pop(context),
        child: Text('CANCEL'),
      ),
      TextButton(
        onPressed: () {
          final text = (TextEditingController()..text = value).text;
          Navigator.pop(context, text);
        },
        child: Text('SAVE'),
      ),
    ],
  ),
);
