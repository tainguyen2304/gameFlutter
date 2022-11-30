import 'package:flutter/material.dart';
import 'Setting.dart';


class ChooseTypeplay extends StatefulWidget {
  const ChooseTypeplay({super.key});

  @override
  State<ChooseTypeplay> createState() => _ChooseTypeplayState();
}

class _ChooseTypeplayState extends State<ChooseTypeplay> {
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
            Image.asset(
              "images/icon1.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                    side: BorderSide(width: 2, color: Colors.black)),
                onPressed: () {},
                child: Text("Play Offine")),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                    side: BorderSide(width: 2, color: Colors.black)),
                onPressed: () {},
                child: Text("Play Online")),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                    side: BorderSide(width: 2, color: Colors.black)),
                onPressed: () {
                  var showDialog2 = showDialog(
                    context: context,
                    builder: (context) => QuyenTroGiup(),
                  );
                },
                child: Text("John Room")),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: const StadiumBorder(),
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                    side: BorderSide(width: 2, color: Colors.black)),
                onPressed: () {},
                child: Text("Create Room")),
            Row(
              children: [
                Expanded(
                  child: Container(),
                ),
                IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Setting()),
                    );
                  },
                  icon: Image.asset("images/settings.png"),
                  iconSize: 50,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

AlertDialog QuyenTroGiup() {
  return AlertDialog(
    backgroundColor: Colors.white70.withOpacity(0.75),
    shape: ContinuousRectangleBorder(borderRadius: BorderRadius.circular(50)),
    actions: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Text(
                'Bảo INVITE YOU TO ROOM',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Yes',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'No',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      )
    ],
  );
}
