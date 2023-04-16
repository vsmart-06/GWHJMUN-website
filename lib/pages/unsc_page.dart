import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class UNSC extends StatelessWidget {
  UNSC({super.key});

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
                  "The United Nations Security Council",
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
                    "Agenda: Emergency Security Council meeting - South China Sea Dispute",
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: fontMain,
                      fontSize: 30
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(100, 0, 100, 30),
                  child: Text(
                    '"The failure of the United Nations - My failure is maybe, in retrospective, that I was not enough aggressive with the members of the Security Council" (Boutros Boutros-Ghali, former Secretary General of the UN)',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: fontMain,
                      fontSize: 20,
                      fontStyle: FontStyle.italic
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
                            Image(width: MediaQuery.of(context).size.width/4, image: NetworkImage("https://media.discordapp.net/attachments/1022434825115815937/1096764581088600144/image.png?width=638&height=834"),),
                            Container(
                              width: MediaQuery.of(context).size.width*2/5, 
                              child: Text(
                                "Rahul made his start in MUNs in the original running of the MSPMUN. 20 MUNs later, he has only failed to place in 3. He cannot wait to serve as a chair and this MUN's director-general watching delegates make their own mark (he's a bit more emotional than he admits). Often being the most outspoken (and irritating) delegate in the room, he loves lobbying and giving thunderous speeches - finding ways to make fun of half of the committee in the process. Frequently getting barred at a rate that rivals AIPPM delegates for making silly goofy jokes, he prefers committees like UNSC and DISEC where blackmail and ultimatums are considered acceptable forms of diplomacy. However, he never compromises on international law and regulations and scoffs at delegates who are all bark no bite. Outside of MUNs, he loves music, hockey and a plethora of other things (he swears he's interesting) and aspires to get into computers. ",
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
                            Image(width: MediaQuery.of(context).size.width/4, image: NetworkImage("https://media.discordapp.net/attachments/1022434825115815937/1096764295917879316/image.png?width=638&height=834"),),
                            Container(
                              width: MediaQuery.of(context).size.width*2/5,
                              child: Text(
                                "The Vice Chair of UNSC has been a passionate munner in the Bangalore circuit ever since her first MUN in the 7th grade sparked an insatiable thirst for global politics and diplomacy. You can often find her being the most dramatic in committee, although never lacking in strategy and research. Her love for negotiation and fiery debate is driven by her interest in current affairs, social justice and literature. Crisis driven committees like UNSC is where she feels most at home and will never decline an opportunity to prove another delegate wrong. Apart from MUN, she dabbles in photography and writing, directing most of her time to further pursuing research about judicial prejudices to support her prospective career in law. ",
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
                            Image(width: MediaQuery.of(context).size.width/4, image: NetworkImage("https://media.discordapp.net/attachments/1022434825115815937/1096764623191035914/image.png?width=638&height=834"),),
                            Container(
                              width: MediaQuery.of(context).size.width*2/5, 
                              child: Text(
                                "Vipran Vasan is a passionate and accomplished Model UN delegate with a diverse range of interests, including Physics, Mathematics, Video Games, and Sports. With experience of participating in MUN conferences across Bangalore, Vipran has placed in both General Assemblies and Crisis committees. In addition to his MUN experience, Vipran has a background in debating and public speaking, which provides them with a unique perspective on global issues and international relations. His passion for STEM fuels his interest in understanding how technology and innovation can address the world's most pressing challenges. They are also an avid video game enthusiast, recognizing the power of gaming to bring people together and foster communication and teamwork. As a former delegate, Vipran understands the importance of providing a fair and engaging experience for all participants. They are committed to ensuring that delegates have the opportunity to engage in thoughtful debate and negotiation, while also adhering to the rules and procedures of the conference. \n\nVipran Vasan is excited to serve his first Executive Board position as Moderator of the UNSC. Vipran wishes to give the delegates a substantial impression of MUNs for them to carry it on in the future. For this, Vipran looks forward to working with delegates to create a productive and engaging experience for all. ",
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