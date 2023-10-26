// ignore_for_file: prefer_const_constructors, must_be_immutable, use_key_in_widget_constructors, body_might_complete_normally_nullable

import 'package:flutter/material.dart';

class CustomFormFieldText extends StatelessWidget {
  CustomFormFieldText(
      {this.onChanged, this.hintText, this.obsecuretext = false});
  String? hintText;
  Function(String)? onChanged;
  bool? obsecuretext;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obsecuretext!,
      validator: (data) {
        if (data!.isEmpty) {
          return 'field is required';
        }
      },
      onChanged: onChanged,
      decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.white),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
          )),
    );
  }
}
