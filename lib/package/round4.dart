import 'package:flutter/material.dart';

class Round4 extends StatefulWidget {
  const Round4({super.key});

  @override
  State<Round4> createState() => _Round4State();
}

class _Round4State extends State<Round4> {
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
                  Image.asset("images/level4.png"),
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
                              '4.1',
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
                              '4.2',
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
                              '4.3',
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
                              '4.4',
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
                              '4.5',
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
                              '4.6',
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
                              '4.7',
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
                              '4.8',
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
                              '4.9',
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
                              '4.10',
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
                              '4.11',
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
                              '4.12',
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
                              '4.13',
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
                              '4.14',
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
                              '4.15',
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
                              '4.16',
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
                              '4.17',
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
                              '4.18',
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
                              '4.19',
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
                              '4.20',
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
