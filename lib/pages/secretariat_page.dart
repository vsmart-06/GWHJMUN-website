import "package:flutter/material.dart";

class Secretariat extends StatelessWidget {
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
        title: Text("Secretariat"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                "Secretariat",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold
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
                "Organizing committee",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold
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
        )
      ),
    );
  }
}