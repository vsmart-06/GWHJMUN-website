import "package:flutter/material.dart";

class Committee extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Committee"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Committee Page"),
      ),
    );
  }
}