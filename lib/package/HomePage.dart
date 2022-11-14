import 'package:flutter/material.dart';
import 'InfomationDetail.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key, required this.nickName, required this.avatar});
  final String nickName;
  final String avatar;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/h1.jpg"), fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 100),
                  height: 100,
                  child: Image.asset(
                    widget.avatar,
                    height: 100,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 110),
                  child: Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.nickName,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'LV.0',
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
                  onPressed: () {
                    Navigator.of(context).popUntil((route) => route.isFirst);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => InfoDetail(
                              // nickName: nickName.text,
                              // avatar: avatar,
                              )),
                    );
                  },
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
          ],
        ),
      ),
    );
  }
}
