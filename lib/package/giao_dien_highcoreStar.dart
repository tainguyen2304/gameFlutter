import 'package:flutter/material.dart';

class GiaoDien_HighCore_Star extends StatefulWidget {
  const GiaoDien_HighCore_Star({super.key});

  @override
  State<GiaoDien_HighCore_Star> createState() => _GiaoDien_HighCore_StarState();
}

class _GiaoDien_HighCore_StarState extends State<GiaoDien_HighCore_Star> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/h4.jpg"), fit: BoxFit.cover),
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Container(
              width: MediaQuery.of(context).size.width / 1.25,
              height: MediaQuery.of(context).size.width / 0.7,
              decoration: BoxDecoration(
                border: Border.all(
                    color: Color.fromARGB(255, 17, 16, 16), width: 3),
                borderRadius: BorderRadius.circular(30),
              ),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        "High Score",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w400),
                      ),
                      //
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset("images/Mask Group 17.png"),
                            iconSize: 50,
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                    border: Border(
                                        bottom:
                                            BorderSide(color: Colors.black),)),
                                child: Row(
                                  children: [
                                    Text("Thái Nguyễn",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700)),
                                    SizedBox(width: 20),
                                    const Text(
                                      "100",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow.shade700,
                                      size: 40,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      //
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset("images/Mask Group 18.png"),
                            iconSize: 50,
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                    border: Border(
                                        bottom:
                                            BorderSide(color: Colors.black))),
                                child: Row(
                                  children: [
                                    Text("Roney",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700)),
                                    SizedBox(width: 20),
                                    const Text(
                                      "99",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow.shade700,
                                      size: 40,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      //
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset("images/Mask Group 19.png"),
                            iconSize: 50,
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                    border: Border(
                                        bottom:
                                            BorderSide(color: Colors.black))),
                                child: Row(
                                  children: [
                                    Text("Harry Max Hài",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700)),
                                    SizedBox(width: 20),
                                    const Text(
                                      "98",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow.shade700,
                                      size: 40,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      //
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset("images/Mask Group 20.png"),
                            iconSize: 50,
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                    border: Border(
                                        bottom:
                                            BorderSide(color: Colors.black))),
                                child: Row(
                                  children: [
                                    Text("Ronaldol",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700)),
                                    SizedBox(width: 20),
                                    const Text(
                                      "97",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow.shade700,
                                      size: 40,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      //
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset("images/Mask Group 17.png"),
                            iconSize: 50,
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                    border: Border(
                                        bottom:
                                            BorderSide(color: Colors.black))),
                                child: Row(
                                  children: [
                                    Text("Messi",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700)),
                                    SizedBox(width: 20),
                                    const Text(
                                      "96",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow.shade700,
                                      size: 40,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      //
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Image.asset("images/Mask Group 18.png"),
                            iconSize: 50,
                          ),
                          Column(
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                    border: Border(
                                        bottom:
                                            BorderSide(color: Colors.black))),
                                child: Row(
                                  children: [
                                    Text("Zed",
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w700)),
                                    SizedBox(width: 20),
                                    const Text(
                                      "95",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Colors.yellow.shade700,
                                      size: 40,
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      //
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              backgroundColor:
                                  Color.fromARGB(255, 133, 126, 126),
                              padding:
                                  const EdgeInsets.fromLTRB(50, 20, 50, 20),
                              side: BorderSide(width: 2, color: Colors.black)),
                          onPressed: () {},
                          child: Text("Back")),
                    ]),
              ]),
            ),
          ])
        ]),
      ),
    );
  }
}
