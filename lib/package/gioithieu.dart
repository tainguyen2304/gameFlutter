import 'package:flutter/material.dart';

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
              children: [
                Image.asset(
                  "images/icon1.png",
                  fit: BoxFit.cover,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
//  "'*This is the Who is Stupid game developed by the Manchester United team of 3 members:'"
//                         "'-Tran Nguyen Gia Bao'"
//                         "'- Trinh Thai Nguyen'"
//                         "'-Nguyen Thanh Tai'"
//                         "'* The purpose of the game:'"
//                         "'The game you just need to think carefully'"
//                         "',prepare all the questions of the game correctly'"
//                         "'and can use the help of the game to your advantage when playing.'"
//                         "'* Includes 2 types of games'"
//                         "'-Online form 1vs1 online with other players.'"
//                         "'Whoever has the most points will be the winner.'"
//                         "'Points are calculated based on who gets the'"
//                         "'most correct answers the fastest.'"
//                         "'-Offline the form of going through the levels'"
//                         "'from the easiest to the most difficult. Each level will have 5 challenges and there are 5 levels. You must win all 5 challenges to pass the new level. In each challenge you answer correctly within the allotted time will be awarded Stars. And the ranking will be based on the Stars you earn.'"
//                         "'Under 5s you will get 3 Stars, under 10s you will get 2 Stars and under 15s you will only get 1 Star.'"
//                         "'* You will have 5 energy points.'"
//                         "'When you play a challenge you will spend 1 energy if you win that challenge you will gain 1 more energy. And every 2 hours you will get 1 energy. You can buy energy based on Gold'"