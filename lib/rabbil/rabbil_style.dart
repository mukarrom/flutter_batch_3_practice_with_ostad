import 'package:flutter/material.dart';

InputDecoration myTextInputDecoration(String label) {
  return InputDecoration(
      border: const OutlineInputBorder(),
      labelText: label,
      filled: true,
      fillColor: Colors.white70);
}
