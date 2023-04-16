import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class UNEP extends StatelessWidget {
  UNEP({super.key});

  String? fontMain = GoogleFonts.playfairDisplay().fontFamily;
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
                  "The United Nations Environment Programme",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: fontMain,
                    fontSize: 50
                  ),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(100, 30, 100, 30),
                  child: Text(
                    "Agenda: Discussing the devastating impact of climate change in South Asia (With special emphasis on heavy rains in the Indian Subcontinent, floods in Pakistan and melting of the Himalayas).",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: fontMain,
                      fontSize: 30
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Divider(
                    color: Colors.white,
                    thickness: 2,
                    indent: 150,
                    endIndent: 150,
                  ),
                ),
                Text(
                  "The Executive Board",
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: fontMain,
                    fontSize: 40
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 30, 0, 100),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 30, 0, 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(width: MediaQuery.of(context).size.width/4, image: NetworkImage("https://media.discordapp.net/attachments/1022434825115815937/1096767899546427534/image.png?width=622&height=834"),),
                            Container(
                              width: MediaQuery.of(context).size.width*2/5, 
                              child: Text(
                                "Vansh Abrol, you may have heard the name. He's the currently serving MUN Prefect and the Secretary-General of GWHJMUN 2023. Abrol has recently gathered a bit of a name in the circuit for his antics in committee sessions. From portraying Shashi Tharoor as immaculately as ever to conducting riots in committee sessions, he will keep you entertained till the very last second. Well, along with entertainment, he does come with his fair share of experience, attending over 15 conferences since 2018. He has received placements in DSMUN, IMUN, IIITA-MUN, HMUN, GWHMUN, SNISMUN, CJCMUN and GEARMUN. \n\nApart from MUN, he has great interests in Current Affairs, history and sports. He freelances as a local football commentator and never forgets to keep up with his mischief. He can neither confirm nor deny if he's being tracked by the CCP, but anyways, he's eagerly looking forward to watch the world burn with you all!",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: fontMain,
                                  fontSize: 20
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(width: MediaQuery.of(context).size.width/4, image: NetworkImage("https://media.discordapp.net/attachments/1022434825115815937/1096767874661634158/image.png?width=622&height=834"),),
                            Container(
                              width: MediaQuery.of(context).size.width*2/5,
                              child: Text(
                                "Ash Nair is best known as the currently serving Cultural Secretary of GWH, or as the guy always with a camera in hand. As an avid debater and MUN enthusiast with several accolades to the name, Nair finds solace in any good debate which can result in creative ideation. \n\nA musician at heart, much of Nair's free time is spent dabbing in any and every genre of the art form, and, in all honestly, Nair definitely needs to spend more time socializing rather than spending time cooped up in a room with a guitar. Studying psychology and art at school, Nair finds importance in promoting diverse talents of the student body and cannot wait to do so as Vice-Chair (where he WILL do his best to NOT bring up the band Polyphia for the entirety of committee).",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: fontMain,
                                  fontSize: 20
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 15, 0, 30),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(width: MediaQuery.of(context).size.width/4, image: NetworkImage("https://media.discordapp.net/attachments/1022434825115815937/1096767927228829756/image.png?width=622&height=834"),),
                            Container(
                              width: MediaQuery.of(context).size.width*2/5, 
                              child: Text(
                                'Dhruv Mittal is known for a passionate approach to MUN. Having attended and placed in numerous conferences, he is dedicated to ensuring a productive and fulfilling conference experience for all participants and equipping them with the necessary tools to navigate through the complexities of international relations. \n\n"Going to my first MUN in Grade 6 was one of the best decisions of my life. Since then, MUNs have shown me the world from countless perspectives while meeting wonderful people along the way. MUNs have taught me diplomacy, negotiation, and international relations in an extremely wonderful and interactive manner that I never thought I would enjoy understanding. Over the years, this has induced an eagerness to learn as every conference I have attended has given me something to take back".',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: fontMain,
                                  fontSize: 20
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      )
    );
  }
}
