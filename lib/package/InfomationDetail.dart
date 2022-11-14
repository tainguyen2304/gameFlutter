import 'package:flutter/material.dart';

class InfoDetail extends StatefulWidget {
  const InfoDetail({super.key});

  @override
  State<InfoDetail> createState() => _InfoDetailState();
}

class _InfoDetailState extends State<InfoDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(10),
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/backgroundGeneral.png"),
              fit: BoxFit.cover),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text('Thông tin cá nhân',
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 30.0, 0, 10.0),
              child: Image.asset(
                "images/avatar1.png",
                fit: BoxFit.cover,
                width: 80,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.black))),
              child: Text(
                'Nick name: Tai',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.black))),
              child: Text(
                'Level: 2',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            Container(
              margin: EdgeInsets.all(10.0),
              padding: EdgeInsets.all(4.0),
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.black))),
              child: Text(
                'Age: 16',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 40, 0, 0),
                padding: const EdgeInsets.all(6),
                height: MediaQuery.of(context).size.height * 1 / 5,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.black45, width: 2)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 1 / 2 - 40,
                      decoration: const BoxDecoration(
                        border: Border(
                            right: BorderSide(color: Colors.black45, width: 2)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'HighSorce',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: Row(
                              children: [
                                Text(
                                  '1200',
                                ),
                                Image.asset(
                                  "images/iconHighScore.png",
                                  fit: BoxFit.cover,
                                  width: 10,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 1 / 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Text(
                            'Rank',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Text('Vàng')
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.fromLTRB(0, 160, 0, 0),
                padding: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                    border: Border.all(width: 2),
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(50)),
                child: Padding(
                  padding: EdgeInsets.zero,
                  child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0)),
                      ),
                    ),
                    onPressed: () => {},
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                      child: Text(
                        "Back",
                        style: TextStyle(
                            color: Color.fromARGB(255, 16, 7, 2),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
