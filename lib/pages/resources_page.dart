import "package:flutter/material.dart";
import "dart:html";
import "package:google_fonts/google_fonts.dart";

class Resources extends StatefulWidget {
  @override
  State<Resources> createState() => _ResourcesState();
}

class _ResourcesState extends State<Resources> {
  List<Color> accentColor = [Colors.white, Colors.white, Colors.white];
  String? font = GoogleFonts.roboto().fontFamily;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 80,
              child: DrawerHeader(
                child: Text(
                  "GWHJMUN 2023",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: GoogleFonts.playfairDisplay().fontFamily,
                    fontSize: 30
                  ),
                )
              ),
            ),
            ListTile(
              title: Text(
                "Home",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: font,
                  fontSize: 20
                ),
              ),
              onTap: () {
                Navigator.popAndPushNamed(context, "/");
              },
            ),
            ListTile(
              title: Text(
                "Committees",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: font,
                  fontSize: 20
                ),
              ),
              onTap: () {
                Navigator.popAndPushNamed(context, "/committees");
              },
            ),
            ListTile(
              title: Text(
                "Resources",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: font,
                  fontSize: 20
                ),
              ),
              onTap: () {
                Navigator.popAndPushNamed(context, "/resources");
              },
            ),
            ListTile(
              title: Text(
                "Secretariat",
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: font,
                  fontSize: 20
                ),
              ),
              onTap: () {
                Navigator.popAndPushNamed(context, "/secretariat");
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
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
                window.open("https://drive.google.com/drive/folders/1PvWVxG5gLpb0p990iga8NNrM7OZJnFxJ?usp=sharing", "Hi");
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
                window.open("https://drive.google.com/file/d/1xATgIXdRyIn1MgnJ4WkdKt1XRMP_l9Vi/view?usp=sharing", "Hi");
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
