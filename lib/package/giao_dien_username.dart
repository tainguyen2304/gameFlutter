import 'package:flutter/material.dart';

class GiaoDien_Username extends StatefulWidget {
  const GiaoDien_Username({super.key});

  @override
  State<GiaoDien_Username> createState() => _GiaoDien_UsernameState();
}

class _GiaoDien_UsernameState extends State<GiaoDien_Username> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/h1.jpg"), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 100),
                  height: 100,
                  child: Image.asset(
                    "images/icon2.png",
                    height: 100,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 110),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Username',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'LV.120',
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 150),
                  child: IconButton(
                    onPressed: () {},
                    icon: Image.asset("images/settings.png"),
                    iconSize: 50,
                  ),
                ),
              ],
            ),
            Image.asset("images/icon1.png"),
            const SizedBox(
              height: 2.0,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.all(25),
                      side: BorderSide(width: 2, color: Colors.black)),
                  onPressed: () {},
                  child: Text("Player Information")),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.all(25),
                      side: BorderSide(width: 2, color: Colors.black)),
                  onPressed: () {},
                  child: Text("Play Game")),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      shape: const StadiumBorder(),
                      backgroundColor: Colors.white,
                      padding: const EdgeInsets.all(25),
                      side: BorderSide(width: 2, color: Colors.black)),
                  onPressed: () {},
                  child: Text("Nạp tiền")),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Image.asset("images/settings.png"),
                  iconSize: 50,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
