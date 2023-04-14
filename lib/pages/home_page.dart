import "package:flutter/material.dart";
import "dart:async";
import "package:google_fonts/google_fonts.dart";

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Duration time = DateTime(2023, 4, 20).difference(DateTime.now());
  Timer? timer;
  int? days;
  int? hours;
  int? minutes;
  int? seconds;
  List<String> time_string = ["", "", "", ""];
  Color primaryColor = Colors.black;
  Color accentColor = Colors.white;
  Size buttonSize = Size(100, 100);
  String? font = GoogleFonts.roboto().fontFamily;

  @override
  void initState() {
    super.initState();
    timer = Timer.periodic(Duration(seconds: 1), (timer) {setCountdown();});
  }

  void setCountdown() {
    setState(() {
      int seconds = time.inSeconds - 1;
      if (seconds < 0) {
        seconds = 0;
      }
      time = Duration(seconds: seconds);
    });
  }

  @override
  Widget build(BuildContext context) {
    time_string = ["", "", "", ""];
    days = time.inDays;
    if (days !< 10) {time_string[0] = "0"+days.toString();}
    else {time_string[0] = days.toString();}
    hours = time.inHours.remainder(24);
    if (hours !< 10) {time_string[1] = "0"+hours.toString();}
    else {time_string[1] = hours.toString();}
    minutes = time.inMinutes.remainder(60);
    if (minutes !< 10) {time_string[2] = "0"+minutes.toString();}
    else {time_string[2] = minutes.toString();}
    seconds = time.inSeconds.remainder(60);
    if (seconds !< 10) {time_string[3] = "0"+seconds.toString();}
    else {time_string[3] = seconds.toString();}

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
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: NetworkImage("https://cdn.discordapp.com/attachments/871659799329255424/1096047341049483284/WhatsApp_Image_2023-04-13_at_17.46.50.jpeg"),),
            Text(
              "Starts in:",
              style: TextStyle(
                color: Colors.white,
                fontFamily: font,
                fontSize: 20
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          time_string[0],
                          style: TextStyle(
                            backgroundColor: primaryColor,
                            color: accentColor,
                            fontFamily: font,
                            fontSize: 40
                          ),
                        ),
                      ),
                      Text(
                        "Days",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: font,
                          fontSize: 20
                        )
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          time_string[1],
                          style: TextStyle(
                            backgroundColor: primaryColor,
                            color: accentColor,
                            fontFamily: font,
                            fontSize: 40
                          ),
                        ),
                      ),
                      Text(
                        "Hours",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: font,
                          fontSize: 20
                        )
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          time_string[2],
                          style: TextStyle(
                            backgroundColor: primaryColor,
                            color: accentColor,
                            fontFamily: font,
                            fontSize: 40
                          ),
                        ),
                      ),
                      Text(
                        "Minutes",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: font,
                          fontSize: 20
                        )
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          time_string[3],
                          style: TextStyle(
                            backgroundColor: primaryColor,
                            color: accentColor,
                            fontFamily: font,
                            fontSize: 40
                          ),
                        ),
                      ),
                      Text(
                        "Seconds",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: font,
                          fontSize: 20
                        )
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        )
      )
    );
  }
}