import 'package:flutter/material.dart';
import 'package:game/package/MenuPlay.dart';
import 'package:game/package/Setting.dart';
import 'package:game/package/drawerMenu.dart';
import 'InfomationDetail.dart';

class HomePage extends StatefulWidget {
  HomePage(
      {super.key,
      this.nickName,
      this.avatar,
      this.age,
      this.level,
      this.score});
  final String? nickName;
  final String? avatar;
  final String? age;
  final int? level;
  final String? score;
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                  child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    Image.asset(
                      widget.avatar.toString(),
                      height: 60,
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                      child: Column(
                        children: [
                          Text(
                            widget.nickName.toString(),
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            widget.level.toString(),
                            style: TextStyle(fontSize: 15),
                          )
                        ],
                      ),
                    )
                  ])),
              Container(
                child: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) =>  Setting( 
                        score: widget.score.toString(),
                                      level: widget.level,
                                      nickName: widget.nickName.toString(),
                                      avatar: widget.avatar.toString(),
                                      age: widget.age.toString(),)),
                    );
                  },
                  icon: Image.asset("images/settings.png"),
                  iconSize: 30,
                ),
              ),
            ],
          ),
        ),
        drawer: const ListFriend(),
        body: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.fromLTRB(0, 50, 0, 0),
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/h1.jpg"), fit: BoxFit.cover),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
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
                          Navigator.of(context)
                              .popUntil((route) => route.isFirst);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InfoDetail(
                                      score: widget.score.toString(),
                                      level: widget.level.toString(),
                                      nickName: widget.nickName.toString(),
                                      avatar: widget.avatar.toString(),
                                      age: widget.age.toString(),
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
                        onPressed: () {
                          Navigator.of(context)
                              .popUntil((route) => route.isFirst);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MenuPlay(
                                  score: widget.score.toString(),
                                      level: int.parse(widget.level.toString()),
                                      nickName: widget.nickName.toString(),
                                      avatar: widget.avatar.toString(),
                                      age: widget.age.toString(),
                                    )),
                          );
                        },
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
          ],
        ));
  }
}
