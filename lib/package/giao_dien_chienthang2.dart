import 'package:flutter/material.dart';

class GiaoDien_Won extends StatefulWidget {
  const GiaoDien_Won({super.key});

  @override
  State<GiaoDien_Won> createState() => _GiaoDien_WonState();
}

class _GiaoDien_WonState extends State<GiaoDien_Won> {
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
                          iconSize: 100,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            "images/Mask Group 17.png",
                          ),
                          iconSize: 150,
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 50,
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
                    height: MediaQuery.of(context).size.width / 2.0 / 2,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromARGB(255, 65, 49, 3)),
                    child: Center(
                        child: Opacity(
                      opacity: 0.80,
                      child: Container(
                        width: MediaQuery.of(context).size.width / 2,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 246, 203, 217)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 50,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 50,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 50,
                            ),
                          ],
                        ),
                      ),
                    )),
                  ),
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: const StadiumBorder(),
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
                        side: BorderSide(width: 2, color: Colors.black)),
                    onPressed: () {},
                    child: Text(
                      "Continue",
                      style: TextStyle(fontSize: 25),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                      width: 100,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            backgroundColor: Colors.white,
                            padding: const EdgeInsets.all(25),
                            side: BorderSide(width: 2, color: Colors.black)),
                        onPressed: () {},
                        child: Text("Back")),
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
