import 'package:flutter/material.dart';
import 'package:website/pages/home_page.dart';
import "package:website/pages/committee_page.dart";
import "package:website/pages/secretariat_page.dart";
import "package:website/pages/resources_page.dart";

void main() {
  runApp(
    MaterialApp(
      routes: {
        "/": (context) => Home(),
        "/committees": (context) => Committee(),
        "/secretariat": (context) => Secretariat(),
        "/resources": (context) => Resources(),
      }
    )
  );
}