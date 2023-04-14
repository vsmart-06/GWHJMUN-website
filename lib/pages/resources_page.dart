import "package:flutter/material.dart";
import "dart:html";

class Resources extends StatefulWidget {
  @override
  State<Resources> createState() => _ResourcesState();
}

class _ResourcesState extends State<Resources> {
  List<Color> accentColor = [Colors.white, Colors.white, Colors.white];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            ListTile(
              title: Text("Home"),
              onTap: () {
                Navigator.popAndPushNamed(context, "/");
              },
            ),
            ListTile(
              title: Text("Committees"),
              onTap: () {
                Navigator.popAndPushNamed(context, "/committees");
              },
            ),
            ListTile(
              title: Text("Resources"),
              onTap: () {
                Navigator.popAndPushNamed(context, "/resources");
              },
            ),
            ListTile(
              title: Text("Secretariat"),
              onTap: () {
                Navigator.popAndPushNamed(context, "/secretariat");
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Resources"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                foregroundColor: MaterialStateProperty.all<Color>(accentColor[0]),
              ),
              child: Text(
                style: TextStyle(
                  color: accentColor[0],
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                "Code of Conduct"
              ),
              onPressed: () {
                window.open("https://www.gwhevents.com/committees", "Hi");
              },
              onHover: (value) {
                if (value) {
                  setState(() {
                    accentColor[0] = Color.fromARGB(255, 34, 139, 34);
                  });
                }
                else {
                  setState(() {
                    accentColor[0] = Colors.white;
                  });
                }
              },
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                foregroundColor: MaterialStateProperty.all<Color>(accentColor[1]),
              ),
              child: Text(
                style: TextStyle(
                  color: accentColor[1],
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                "Background Guides"
              ),
              onPressed: () {
                window.open("https://www.gwhevents.com/committees", "Hi");
              },
              onHover: (value) {
                if (value) {
                  setState(() {
                    accentColor[1] = Color.fromARGB(255, 34, 139, 34);
                  });
                }
                else {
                  setState(() {
                    accentColor[1] = Colors.white;
                  });
                }
              },
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                foregroundColor: MaterialStateProperty.all<Color>(accentColor[2]),
              ),
              child: Text(
                style: TextStyle(
                  color: accentColor[2],
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                "Rules of Procedure"
              ),
              onPressed: () {
                window.open("https://www.gwhevents.com/committees", "Hi");
              },
              onHover: (value) {
                if (value) {
                  setState(() {
                    accentColor[2] = Color.fromARGB(255, 34, 139, 34);
                  });
                }
                else {
                  setState(() {
                    accentColor[2] = Colors.white;
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}