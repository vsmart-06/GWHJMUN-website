import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class Committee extends StatefulWidget {
  @override
  State<Committee> createState() => _CommitteeState();
}

class _CommitteeState extends State<Committee> {
  String? font = GoogleFonts.roboto().fontFamily;

  List<Color> cardColors = [Colors.blue, Colors.blue, Colors.blue, Colors.blue];

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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  color: cardColors[0],
                  elevation: 10,
                  shadowColor: Colors.blueGrey,
                  borderOnForeground: true,
                  child: TextButton(
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.all<Size>(Size(300, 300)),
                      maximumSize: MaterialStateProperty.all<Size>(Size(300, 300)),
                    ),
                    onHover: (value) {
                      if (value) {
                        setState(() {
                        cardColors[0] = Colors.orange;
                        });
                      }
                      else {
                        setState(() {
                        cardColors[0] = Colors.blue;
                        });
                      }
                    },
                    onPressed: () {},
                    child: Image(image: NetworkImage("https://cdn.discordapp.com/attachments/871659799329255424/1096047341049483284/WhatsApp_Image_2023-04-13_at_17.46.50.jpeg"),)
                  )
                ),
              ],
            ),
            Row()
          ],
        ),
      ),
    );
  }
}