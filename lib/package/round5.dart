import 'package:flutter/material.dart';

class Round5 extends StatefulWidget {
  const Round5({super.key});

  @override
  State<Round5> createState() => _Round5State();
}

class _Round5State extends State<Round5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/h4.jpg"), fit: BoxFit.cover),
        ),
        child: SingleChildScrollView(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      Image.asset(
                        "images/start.png",
                        fit: BoxFit.cover,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 40),
                            child: IconButton(
                              onPressed: () {},
                              icon: Image.asset("images/Mask Group 17.png"),
                              iconSize: 210,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Image.asset("images/final-boss.png"),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              backgroundColor: Color.fromARGB(255, 80, 69, 14),
                              padding:
                                  const EdgeInsets.fromLTRB(50, 20, 50, 20),
                              side: BorderSide(width: 3, color: Colors.black)),
                          onPressed: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(60.0),
                              border: Border.all(style: BorderStyle.none),
                            ),
                            child: const Text(
                              '5.1',
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              backgroundColor: Color.fromARGB(255, 80, 69, 14),
                              padding:
                                  const EdgeInsets.fromLTRB(50, 20, 50, 20),
                              side: BorderSide(width: 3, color: Colors.black)),
                          onPressed: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(60.0),
                              border: Border.all(style: BorderStyle.none),
                            ),
                            child: const Text(
                              '5.2',
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              backgroundColor: Color.fromARGB(255, 80, 69, 14),
                              padding:
                                  const EdgeInsets.fromLTRB(50, 20, 50, 20),
                              side: BorderSide(width: 3, color: Colors.black)),
                          onPressed: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(60.0),
                              border: Border.all(style: BorderStyle.none),
                            ),
                            child: const Text(
                              '5.3',
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              backgroundColor: Color.fromARGB(255, 80, 69, 14),
                              padding:
                                  const EdgeInsets.fromLTRB(50, 20, 50, 20),
                              side: BorderSide(width: 3, color: Colors.black)),
                          onPressed: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(60.0),
                              border: Border.all(style: BorderStyle.none),
                            ),
                            child: const Text(
                              '5.4',
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              backgroundColor: Color.fromARGB(255, 80, 69, 14),
                              padding:
                                  const EdgeInsets.fromLTRB(50, 20, 50, 20),
                              side: BorderSide(width: 3, color: Colors.black)),
                          onPressed: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(60.0),
                              border: Border.all(style: BorderStyle.none),
                            ),
                            child: const Text(
                              '5.5',
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              backgroundColor: Color.fromARGB(255, 80, 69, 14),
                              padding:
                                  const EdgeInsets.fromLTRB(50, 20, 50, 20),
                              side: BorderSide(width: 3, color: Colors.black)),
                          onPressed: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(60.0),
                              border: Border.all(style: BorderStyle.none),
                            ),
                            child: const Text(
                              '5.6',
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              backgroundColor: Color.fromARGB(255, 80, 69, 14),
                              padding:
                                  const EdgeInsets.fromLTRB(50, 20, 50, 20),
                              side: BorderSide(width: 3, color: Colors.black)),
                          onPressed: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(60.0),
                              border: Border.all(style: BorderStyle.none),
                            ),
                            child: const Text(
                              '5.7',
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              backgroundColor: Color.fromARGB(255, 80, 69, 14),
                              padding:
                                  const EdgeInsets.fromLTRB(50, 20, 50, 20),
                              side: BorderSide(width: 3, color: Colors.black)),
                          onPressed: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(60.0),
                              border: Border.all(style: BorderStyle.none),
                            ),
                            child: const Text(
                              '5.8',
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              backgroundColor: Color.fromARGB(255, 80, 69, 14),
                              padding:
                                  const EdgeInsets.fromLTRB(50, 20, 50, 20),
                              side: BorderSide(width: 3, color: Colors.black)),
                          onPressed: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(60.0),
                              border: Border.all(style: BorderStyle.none),
                            ),
                            child: const Text(
                              '5.9',
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              backgroundColor: Color.fromARGB(255, 80, 69, 14),
                              padding:
                                  const EdgeInsets.fromLTRB(40, 20, 40, 20),
                              side: BorderSide(width: 3, color: Colors.black)),
                          onPressed: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(60.0),
                              border: Border.all(style: BorderStyle.none),
                            ),
                            child: const Text(
                              '5.10',
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              backgroundColor: Color.fromARGB(255, 80, 69, 14),
                              padding:
                                  const EdgeInsets.fromLTRB(40, 20, 40, 20),
                              side: BorderSide(width: 3, color: Colors.black)),
                          onPressed: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(60.0),
                              border: Border.all(style: BorderStyle.none),
                            ),
                            child: const Text(
                              '5.11',
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              backgroundColor: Color.fromARGB(255, 80, 69, 14),
                              padding:
                                  const EdgeInsets.fromLTRB(40, 20, 40, 20),
                              side: BorderSide(width: 3, color: Colors.black)),
                          onPressed: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(60.0),
                              border: Border.all(style: BorderStyle.none),
                            ),
                            child: const Text(
                              '5.12',
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              backgroundColor: Color.fromARGB(255, 80, 69, 14),
                              padding:
                                  const EdgeInsets.fromLTRB(40, 20, 40, 20),
                              side: BorderSide(width: 3, color: Colors.black)),
                          onPressed: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(60.0),
                              border: Border.all(style: BorderStyle.none),
                            ),
                            child: const Text(
                              '5.13',
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              backgroundColor: Color.fromARGB(255, 80, 69, 14),
                              padding:
                                  const EdgeInsets.fromLTRB(40, 20, 40, 20),
                              side: BorderSide(width: 3, color: Colors.black)),
                          onPressed: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(60.0),
                              border: Border.all(style: BorderStyle.none),
                            ),
                            child: const Text(
                              '5.14',
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              backgroundColor: Color.fromARGB(255, 80, 69, 14),
                              padding:
                                  const EdgeInsets.fromLTRB(40, 20, 40, 20),
                              side: BorderSide(width: 3, color: Colors.black)),
                          onPressed: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(60.0),
                              border: Border.all(style: BorderStyle.none),
                            ),
                            child: const Text(
                              '5.15',
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              backgroundColor: Color.fromARGB(255, 80, 69, 14),
                              padding:
                                  const EdgeInsets.fromLTRB(40, 20, 40, 20),
                              side: BorderSide(width: 3, color: Colors.black)),
                          onPressed: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(60.0),
                              border: Border.all(style: BorderStyle.none),
                            ),
                            child: const Text(
                              '5.16',
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              backgroundColor: Color.fromARGB(255, 80, 69, 14),
                              padding:
                                  const EdgeInsets.fromLTRB(40, 20, 40, 20),
                              side: BorderSide(width: 3, color: Colors.black)),
                          onPressed: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(60.0),
                              border: Border.all(style: BorderStyle.none),
                            ),
                            child: const Text(
                              '5.17',
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              backgroundColor: Color.fromARGB(255, 80, 69, 14),
                              padding:
                                  const EdgeInsets.fromLTRB(40, 20, 40, 20),
                              side: BorderSide(width: 3, color: Colors.black)),
                          onPressed: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(60.0),
                              border: Border.all(style: BorderStyle.none),
                            ),
                            child: const Text(
                              '5.18',
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              backgroundColor: Color.fromARGB(255, 80, 69, 14),
                              padding:
                                  const EdgeInsets.fromLTRB(40, 20, 40, 20),
                              side: BorderSide(width: 3, color: Colors.black)),
                          onPressed: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(60.0),
                              border: Border.all(style: BorderStyle.none),
                            ),
                            child: const Text(
                              '5.19',
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              backgroundColor: Color.fromARGB(255, 80, 69, 14),
                              padding:
                                  const EdgeInsets.fromLTRB(40, 20, 40, 20),
                              side: BorderSide(width: 3, color: Colors.black)),
                          onPressed: () {},
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(60.0),
                              border: Border.all(style: BorderStyle.none),
                            ),
                            child: const Text(
                              '5.20',
                              style: TextStyle(fontSize: 30),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
