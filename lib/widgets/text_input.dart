import 'package:flutter/material.dart';
import 'package:econnect/utils/app_style.dart';

class TextInput extends StatefulWidget {
  const TextInput({super.key, required this.hintText});
  final String hintText;

  @override
  State<TextInput> createState() => _TextInputState();
}

class _TextInputState extends State<TextInput> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: Styles.headLineSmall.copyWith(fontWeight: FontWeight.w800),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(
          vertical: (20.0),
          horizontal: (20.0),
        ),
        hintText: widget.hintText,
      ),
    );
  }
}
