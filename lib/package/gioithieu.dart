import 'package:flutter/material.dart';

import 'Setting.dart';

class GioiThieu extends StatefulWidget {
  const GioiThieu({super.key});

  @override
  State<GioiThieu> createState() => _GioiThieuState();
}

class _GioiThieuState extends State<GioiThieu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/h1.jpg"), fit: BoxFit.cover),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset(
                  "images/icon1.png",
                  fit: BoxFit.cover,
                ),
                Row(
                  children: [
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder(),
                            backgroundColor: Colors.white,
                            padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                            side: BorderSide(width: 2, color: Colors.black)),
                        onPressed: () {},
                        child: Text("Back")),
                  ],
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Column(
                        children: [
                          Text(
                              '*This is the Who is Stupid game developed by the '),
                          Text('Manchester United team of 3 members:'),
                          Text('-Tran Nguyen Gia Bao'),
                          Text('- Trinh Thai Nguyen'),
                          Text('- Nguyen Thanh Tai'),
                          Text('* The purpose of the game:'),
                          Text('The game you just need to think carefully'),
                          Text(
                              ',prepare all the questions of the game correctly and'),
                          Text(
                              'can use the help of the game to your advantage when playing'),
                          Text('* Includes 2 types of games'),
                          Text('-Online form 1vs1 online with other players.'),
                          Text(
                              'Whoever has the most points will be the winner.'),
                          Text('Points are calculated based on who gets the '),
                          Text('most correct answers the fastest.'),
                          Text('-Offline the form of going through the levels'),
                          Text(
                              ' from the easiest to the most difficult. Each level will have'),
                          Text(
                              '5 challenges and there are 5 levels. You must win all 5'),
                          Text(
                              'challenges to pass the new level. In each challenge you'),
                          Text(
                              'answer correctly within the allotted time will be awarded'),
                          Text(
                              'Stars. And the ranking will be based on the Stars you earn'),
                          Text(
                              ' Under 5s you will get 3 Stars, under 10s you will get 2 '),
                          Text('Stars and under 15s you will only get 1 Star.'),
                          Text('* You will have 5 energy points. '),
                          Text(
                              'When you play a challenge you will spend 1 energy if you'),
                          Text(
                              'win that challenge you will gain 1 more energy. And ever'),
                          Text(
                              '2 hours you will get 1 energy. You can buy energy based'),
                          Text('on Gold')
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Container(
                      child: IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Setting()),
                          );
                        },
                        icon: Image.asset("images/settings.png"),
                        iconSize: 50,
                      ),
                    ),
                    SizedBox(
                      width: 250,
                    ),
                    Container(
                      child: IconButton(
                        onPressed: () {},
                        icon: Image.asset("images/arrow.png"),
                        iconSize: 40,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
