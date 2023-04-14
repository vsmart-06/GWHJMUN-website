import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class Secretariat extends StatelessWidget {

  String? titleFont = GoogleFonts.playfairDisplay().fontFamily;
  String? font = GoogleFonts.roboto().fontFamily;
  ScrollController scroll = ScrollController();

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
        child: RawScrollbar(
          thumbColor: Color(0xFF313133),
          thickness: 10,
          thumbVisibility: true,
          trackVisibility: true,
          controller: scroll,
          child: SingleChildScrollView(
            controller: scroll,
            child: Column(
              children: [
                Text(
                  "SECRETARIAT",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontFamily: titleFont
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: NetworkImage("https://cdn.discordapp.com/attachments/871659799329255424/1096051388477362246/Add_a_heading.png")), //Secretary General
                    Image(image: NetworkImage("https://cdn.discordapp.com/attachments/871659799329255424/1096051388477362246/Add_a_heading.png")) //Director General
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: NetworkImage("https://cdn.discordapp.com/attachments/871659799329255424/1096051388477362246/Add_a_heading.png")), //Crisis Director
                    Image(image: NetworkImage("https://cdn.discordapp.com/attachments/871659799329255424/1096051388477362246/Add_a_heading.png")) //Crisis Director
                  ],
                ),
                Text(
                  "ORGANIZING COMMITTEE",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 40,
                    fontFamily: titleFont
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: NetworkImage("https://cdn.discordapp.com/attachments/871659799329255424/1096051388477362246/Add_a_heading.png")), //Registrations
                    Image(image: NetworkImage("https://cdn.discordapp.com/attachments/871659799329255424/1096051388477362246/Add_a_heading.png")) //Delegate affairs
                  ],
                ),
              ],
            )
          ),
        )
      ),
    );
  }
}