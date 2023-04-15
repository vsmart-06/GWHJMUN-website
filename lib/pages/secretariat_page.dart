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
                    fontSize: 50,
                    fontFamily: titleFont
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(width: MediaQuery.of(context).size.width/3, image: NetworkImage("https://media.discordapp.net/attachments/1022434825115815937/1096761438254678056/1.png?width=952&height=952")), //Secretary General
                    Image(width: MediaQuery.of(context).size.width/3, image: NetworkImage("https://media.discordapp.net/attachments/1022434825115815937/1096761438770573373/2.png?width=952&height=952")) //Director General
                  ],
                ),
                Text(
                  "ORGANIZING COMMITTEE",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontFamily: titleFont
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image(width: MediaQuery.of(context).size.width/3, image: NetworkImage("https://media.discordapp.net/attachments/1022434825115815937/1096780149673967696/image.png?width=782&height=834")), //Registrations
                      Image(width: MediaQuery.of(context).size.width/3, image: NetworkImage("https://media.discordapp.net/attachments/1022434825115815937/1096780255202652261/image.png?width=792&height=834")) //Acad
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(width: MediaQuery.of(context).size.width/3, image: NetworkImage("https://media.discordapp.net/attachments/1022434825115815937/1096780551194689687/image.png?width=788&height=834")), //log
                    Image(width: MediaQuery.of(context).size.width/3, image: NetworkImage("https://media.discordapp.net/attachments/1022434825115815937/1096771840812257381/ocs_1.png?width=536&height=760")) //tech
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(width: MediaQuery.of(context).size.width/3, image: NetworkImage("https://media.discordapp.net/attachments/1022434825115815937/1096780551194689687/image.png?width=788&height=834")), //design
                    Image(width: MediaQuery.of(context).size.width/3, image: NetworkImage("https://media.discordapp.net/attachments/1022434825115815937/1096771840812257381/ocs_1.png?width=536&height=760")) //communication
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