import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

inputDecoration(icon, lable, hint) {
  return TextFormField(
    decoration: new InputDecoration(
        border: new OutlineInputBorder(
            borderSide: new BorderSide(color: Colors.blueAccent)),
        hintText: hint,
        labelText: lable,
        prefixIcon: icon,
        suffixStyle: const TextStyle(color: Colors.green)),
  );
}
