import "package:flutter/material.dart";
import "dart:async";

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
  Color primaryColor = Color.fromARGB(255, 34, 139, 34);
  Color accentColor = Colors.white;
  Size buttonSize = Size(100, 100);

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
    days = time.inDays;
    hours = time.inHours.remainder(24);
    minutes = time.inMinutes.remainder(60);
    seconds = time.inSeconds.remainder(60);

    return Scaffold(
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
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("GWHMUN"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: NetworkImage("https://cdn.discordapp.com/attachments/871659799329255424/1096047341049483284/WhatsApp_Image_2023-04-13_at_17.46.50.jpeg"),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
                            foregroundColor: MaterialStateProperty.all<Color>(accentColor),
                            minimumSize: MaterialStateProperty.all<Size>(buttonSize),
                            maximumSize: MaterialStateProperty.all<Size>(buttonSize),
                          ),
                          onPressed: null, 
                          child: Text(days.toString())
                        ),
                      ),
                      Text(
                        "Days",
                        style: TextStyle(
                          color: Colors.white,
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
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
                            foregroundColor: MaterialStateProperty.all<Color>(accentColor),
                            minimumSize: MaterialStateProperty.all<Size>(buttonSize),
                            maximumSize: MaterialStateProperty.all<Size>(buttonSize),
                          ),
                          onPressed: null, 
                          child: Text(hours.toString(),)
                        ),
                      ),
                      Text(
                        "Hours",
                        style: TextStyle(
                          color: Colors.white,
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
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
                            foregroundColor: MaterialStateProperty.all<Color>(accentColor),
                            minimumSize: MaterialStateProperty.all<Size>(buttonSize),
                            maximumSize: MaterialStateProperty.all<Size>(buttonSize),
                          ),
                          onPressed: null, 
                          child: Text(minutes.toString())
                        ),
                      ),
                      Text(
                        "Minutes",
                        style: TextStyle(
                          color: Colors.white,
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
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(primaryColor),
                            foregroundColor: MaterialStateProperty.all<Color>(accentColor),
                            minimumSize: MaterialStateProperty.all<Size>(buttonSize),
                            maximumSize: MaterialStateProperty.all<Size>(buttonSize),
                          ),
                          onPressed: null, 
                          child: Text(seconds.toString())
                        ),
                      ),
                      Text(
                        "Seconds",
                        style: TextStyle(
                          color: Colors.white,
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