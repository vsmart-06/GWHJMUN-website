import 'package:flutter/material.dart';
import "package:website/pages/home.dart";

void main() {
  runApp(
    MaterialApp(
      routes: {
        "/": (context) => Home()
      }
    )
  );
}