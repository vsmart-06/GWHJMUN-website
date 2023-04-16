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
  String? titleFont = GoogleFonts.playfairDisplay().fontFamily;
  List<Color> cardColors = [Colors.black, Colors.black, Colors.black];

  @override
  Widget build(BuildContext context) {
    Size cardSize = Size(MediaQuery.of(context).size.width/4, MediaQuery.of(context).size.width/4);
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
            Text(
              "RESOURCES",
              style: TextStyle(
                color: Colors.white,
                fontSize: 50,
                fontFamily: titleFont
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    color: cardColors[0],
                    elevation: 10,
                    borderOnForeground: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color: Colors.white)
                    ),
                    child: TextButton(
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all<Size>(cardSize),
                        maximumSize: MaterialStateProperty.all<Size>(cardSize)
                      ),
                      onHover: (value) {
                        if (value) {
                          setState(() {
                          cardColors[0] = Color(0x99313133);
                          });
                        }
                        else {
                          setState(() {
                          cardColors[0] = Colors.black;
                          });
                        }
                      },
                      onPressed: () {window.open("https://docs.google.com/document/d/1MSTvjv-TC2RxX49Iq090i7dr5wusqyjWmXL8sTFZis8/edit?usp=drivesdk", "Code of Conduct");},
                      child: Image(image: NetworkImage("https://media.discordapp.net/attachments/1022434825115815937/1097149949893943296/Screenshot_2023-04-16_at_6.52.07_PM.png?width=1112&height=408"),)
                    )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    color: cardColors[1],
                    elevation: 10,
                    borderOnForeground: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color: Colors.white)
                    ),
                    child: TextButton(
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all<Size>(cardSize),
                        maximumSize: MaterialStateProperty.all<Size>(cardSize)
                      ),
                      onHover: (value) {
                        if (value) {
                          setState(() {
                          cardColors[1] = Color(0x99313133);
                          });
                        }
                        else {
                          setState(() {
                          cardColors[1] = Colors.black;
                          });
                        }
                      },
                      onPressed: () {window.open("https://drive.google.com/drive/folders/1PvWVxG5gLpb0p990iga8NNrM7OZJnFxJ?usp=sharing", "Background Guides");},
                      child: Image(image: NetworkImage("https://media.discordapp.net/attachments/1022434825115815937/1097149846932160512/Screenshot_2023-04-16_at_6.51.40_PM.png?width=1128&height=476"),)
                    )
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Card(
                    color: cardColors[2],
                    elevation: 10,
                    borderOnForeground: true,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: BorderSide(color: Colors.white)
                    ),
                    child: TextButton(
                      style: ButtonStyle(
                        minimumSize: MaterialStateProperty.all<Size>(cardSize),
                        maximumSize: MaterialStateProperty.all<Size>(cardSize)
                      ),
                      onHover: (value) {
                        if (value) {
                          setState(() {
                          cardColors[2] = Color(0x99313133);
                          });
                        }
                        else {
                          setState(() {
                          cardColors[2] = Colors.black;
                          });
                        }
                      },
                      onPressed: () {window.open("https://drive.google.com/file/d/1xATgIXdRyIn1MgnJ4WkdKt1XRMP_l9Vi/view?usp=sharing", "Rules of Procedure");},
                      child: Image(image: NetworkImage("https://media.discordapp.net/attachments/1022434825115815937/1097149892201283594/Screenshot_2023-04-16_at_6.51.53_PM.png?width=1288&height=512"),)
                    )
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
