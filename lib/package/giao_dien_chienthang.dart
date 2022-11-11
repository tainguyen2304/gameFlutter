import 'package:flutter/material.dart';

class GiaoDien_chienthang extends StatefulWidget {
  const GiaoDien_chienthang({super.key});

  @override
  State<GiaoDien_chienthang> createState() => _GiaoDien_chienthangState();
}

class _GiaoDien_chienthangState extends State<GiaoDien_chienthang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/h6.jpg"), fit: BoxFit.cover),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text("RESULTS",
                    style: TextStyle(
                      fontSize: 20,
                    )),
                Text(
                  "You Won",
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset("images/king.png"),
                          iconSize: 80,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            "images/Mask Group 17.png",
                          ),
                          iconSize: 80,
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset("images/icon2.png"),
                      iconSize: 80,
                    ),
                  ],
                ),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width / 1.5,
                    height: MediaQuery.of(context).size.width / 2.0 / 1.5,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 65, 49, 3)),
                    child: Center(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              backgroundColor: Color.fromARGB(255, 83, 88, 93),
                              padding:
                                  const EdgeInsets.fromLTRB(60, 40, 60, 40),
                              side: BorderSide(width: 2, color: Colors.black)),
                          onPressed: () {},
                          child: Text("Play Again")),
                    ),
                  ),
                ),
                Row(
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            backgroundColor: Colors.white,
                            padding: const EdgeInsets.all(25),
                            side: BorderSide(width: 2, color: Colors.black)),
                        onPressed: () {},
                        child: Text("Home")),
                    SizedBox(
                      width: 50,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            backgroundColor: Colors.white,
                            padding: const EdgeInsets.all(25),
                            side: BorderSide(width: 2, color: Colors.black)),
                        onPressed: () {},
                        child: Text("Black")),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
