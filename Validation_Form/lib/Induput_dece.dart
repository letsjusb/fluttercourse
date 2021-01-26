import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

textDecoration(icon, hintlable) {
  new InputDecoration(
      border: new OutlineInputBorder(
          borderSide: new BorderSide(color: Colors.teal)),
      hintText: hintlable,
      helperText: 'Keep it short, this is just a demo.',
      labelText: 'Life story',
      prefixIcon: icon,
      prefixText: ' ',
      suffixText: 'USD',
      suffixStyle: const TextStyle(color: Colors.green));
}
